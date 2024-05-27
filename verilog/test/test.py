import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles
import random

async def reset(dut):
    dut._log.info("reset")
    dut.n_rst.value = 0
    await ClockCycles(dut.clk, 10)
    dut.n_rst.value = 1

def check_output(dut):
    assert dut.ext_lo_n.value != dut.ext_lo_p.value

@cocotb.test()
async def test(dut):
    dut._log.info("start")
    clock = Clock(dut.clk, 100, units="ns")
    cocotb.start_soon(clock.start())


    # test internally generated clock
    ext_lo = 0
    dut.ext_lo_en.value = 0
    dut.ext_lo_n.value = ~ext_lo
    dut.ext_lo_p.value =  ext_lo
    dut.int_lo_settings.value =  0

    await reset(dut)
    dut._log.info("reset over")

    for i in range(0,8):
        dut.int_lo_settings.value =  i
        dut._log.info(f"int_lo_settings is: {dut.int_lo_settings.value}" )

        await ClockCycles(dut.clk, 100)
        check_output(dut)

    # test externally generated clock
    ext_lo = 0
    dut.ext_lo_en.value = 1
    dut.ext_lo_n.value = ~ext_lo
    dut.ext_lo_p.value =  ext_lo
    dut.int_lo_settings.value =  0

    await reset(dut)
    dut._log.info("reset over")

    for i in range(0,30):
        dut.int_lo_settings.value =  random.randrange(0,8)
        dut._log.info(f"int_lo_settings is: {dut.int_lo_settings.value} ignored." )
        for ext_clock_cycle in range(2):
            ext_lo = ~ext_lo
            dut.ext_lo_n.value = ~ext_lo
            dut.ext_lo_p.value =  ext_lo

            await ClockCycles(dut.clk, 20)
            check_output(dut)

    # test internally generated clock
    ext_lo = 0
    dut.ext_lo_en.value = 0
    dut.ext_lo_n.value = ~ext_lo
    dut.ext_lo_p.value =  ext_lo
    dut.int_lo_settings.value =  0

    dut._log.info("No reset")

    reverse_range = list(range(0,8))
    reverse_range.reverse()
    dut._log.info(f"reverse_range {reverse_range}")
    for i in reverse_range:
        dut.int_lo_settings.value =  i
        dut._log.info(f"int_lo_settings is: {dut.int_lo_settings.value}" )

        await ClockCycles(dut.clk, 100)
        check_output(dut)