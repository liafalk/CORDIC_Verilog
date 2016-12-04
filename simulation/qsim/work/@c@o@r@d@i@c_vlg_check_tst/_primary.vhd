library verilog;
use verilog.vl_types.all;
entity CORDIC_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(31 downto 0);
        testp0          : in     vl_logic_vector(31 downto 0);
        testp1          : in     vl_logic_vector(31 downto 0);
        testp2          : in     vl_logic_vector(31 downto 0);
        testp3          : in     vl_logic_vector(31 downto 0);
        testp4          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end CORDIC_vlg_check_tst;
