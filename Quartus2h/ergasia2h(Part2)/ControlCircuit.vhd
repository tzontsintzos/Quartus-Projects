library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Το κύκλωμα ελέγχου (Control Circuit) ορίζει τις πράξεις που  θα γίνουν από την ALU με βάση τους κωδικούς 
--λειτουργίας (opcode) 

entity ControlCircuit is 
    port (
            opcode      :in std_logic_vector (2 downto 0);--operation code sumfona me ton pinaka
            signala, signalb : out  std_logic_vector(0 downto 0);--inverters
            operation : out std_logic_vector(1 downto 0);--epilogeas
            CarryIn : out std_logic);               
end ControlCircuit;

architecture structure10 of ControlCircuit is --arxitektoniki toy kuklomatos elegxou
begin
 process(opcode)--epilogh prakshs
 begin

case opcode is --elegxos periptoseon kai apodosi timon se operation,inverters(signalaa,signalab) kai kratoumeno

    --AND--
    when "000"=>
        operation <= "00";
        signala   <= "0";
        signalb      <= "0";
        CarryIn  <= '0';

    --OR--
    when "001" =>
        operation <= "01";
        signala   <= "0";
        signalb      <= "0";
        CarryIn  <= '0';

    --ADD--         
    when "010" =>
        operation <= "10";
        signala   <= "0";
        signalb      <= "0";
        CarryIn  <= '0';

    --SUB--
    when "011" =>
        operation <= "10";
        signala   <= "0";
        signalb      <="1";
        CarryIn  <= '1';

    --NOR--
    when "100"=>
        operation <= "00";
        signala   <= "1";
        signalb      <= "1";
        CarryIn  <= '0';

    --NAND
    when "101" =>
        operation <= "01";
        signala   <= "1";
        signalb      <= "1";
        CarryIn  <= '0';

    --xor--
    when others =>
        operation <= "11";
        signala   <= "0";
        signalb      <= "0";
        CarryIn  <= '0';
    end case;
    end process;
end structure10;
