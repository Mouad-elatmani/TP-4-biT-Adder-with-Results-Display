library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab2 is
  port (
    a, b : in std_logic_vector(3 downto 0);
    cin : in std_logic;
    sum : buffer std_logic_vector(3 downto 0);
    cout : buffer std_logic:= 'W';
    HEX0, HEX1,HEX3,HEX2: out std_logic_vector(6 downto 0)
  );
end entity lab2;

architecture Behavioral of lab2 is
  signal switch_value : integer range 0 to 255;
  signal seg1_value : integer range 0 to 9;
  signal seg2_value : integer range 0 to 9;

  type arr is array (0 to 9) of std_logic_vector(6 downto 0);
 constant segment_array : arr := (
    "1000000", -- 0
    "1111001", -- 1
    "0100100", -- 2
    "0110000", -- 3
    "0011001", -- 4
    "0010010", -- 5
    "0000010", -- 6
    "1111000", -- 7
    "0000000", -- 8
    "0010000"  -- 9
  );

  component add1
    port (
      a, b : in std_logic;
      cin : in std_logic;
      s : out std_logic;
      cout : out std_logic
    );
  end component add1;

  signal c : std_logic_vector(4 downto 0);

begin
  adder0: add1 port map (a(0), b(0), cin, sum(0), c(1));

  gen_adders: for i in 1 to 3 generate
    adder: add1 port map (a(i), b(i), c(i), sum(i), c(i+1));
  end generate gen_adders;

  cout <= c(4);

 
     
	  switch_value <= to_integer(unsigned(cout&sum));
    seg1_value <= switch_value / 10;
    seg2_value <= switch_value mod 10;
	 
	 

    HEX1 <= SEGment_array(SEG1_value);
    HEX0 <= Segment_array(seg2_value);
	 HEX2<="1110110";
	 HEX3<="1000110";
	

end architecture Behavioral;
