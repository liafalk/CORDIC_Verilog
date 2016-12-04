library verilog;
use verilog.vl_types.all;
entity CORDIC is
    port(
        result          : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        theta           : in     vl_logic_vector(31 downto 0);
        testp0          : out    vl_logic_vector(31 downto 0);
        testp1          : out    vl_logic_vector(31 downto 0);
        testp2          : out    vl_logic_vector(31 downto 0);
        testp3          : out    vl_logic_vector(31 downto 0);
        testp4          : out    vl_logic_vector(31 downto 0)
    );
end CORDIC;
