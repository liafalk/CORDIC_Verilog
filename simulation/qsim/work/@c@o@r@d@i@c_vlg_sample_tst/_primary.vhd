library verilog;
use verilog.vl_types.all;
entity CORDIC_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        theta           : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end CORDIC_vlg_sample_tst;
