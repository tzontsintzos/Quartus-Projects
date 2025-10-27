library ieee;
use ieee.std_logic_1164.all;

entity oros2 is
port (in1, in2: in std_logic; out1: out std_logic);
end oros2;

architecture model_conc2 of oros2 is
begin
out1 <= in1 and in2;
end model_conc2;

library ieee;
use ieee.std_logic_1164.all;

entity oros3 is
port (in1,in2,in3: in std_logic; out1: out std_logic);
end oros3;

architecture model_conc3 of oros3 is
begin
out1 <= in1 and in2 and in3;
end model_conc3;

library ieee;
use ieee.std_logic_1164.all;

entity SOP is
port (in1, in2, in3, in4, in5: in std_logic; out1: out std_logic);
end SOP;

architecture model_concsop of SOP is
begin
out1 <= in1 or in2 or in3 or in4 or in5;
end model_concsop;

library ieee;
use ieee.std_logic_1164.all;

entity askisi1 is
   port (x1, x2, x3, x4, x5: in std_logic;
              f: out std_logic);
end askisi1;

architecture structural of askisi1 is
component oros2
 port (in1, in2: in std_logic; out1: out std_logic);
end component;

component oros3
 port (in1, in2, in3: in std_logic; out1: out std_logic);
end component;

component SOP
 port (in1, in2, in3, in4, in5: in std_logic; out1: out std_logic);
end component; 

signal res1, res2, res3, res4, res5: std_logic;
begin

I0: oros2 port map (not x3,not x5, res1); 
I1: oros2 port map (not x4,not x5, res2); 
I2: oros3 port map (not x1,not x2,not x4, res3); 
I3: oros3 port map (x2,x4,x5,res4);
I4: oros3 port map (not x1,x2,not x5, res5); 
I5: SOP port map (res1, res2, res3,res4,res5, f); 
end structural;