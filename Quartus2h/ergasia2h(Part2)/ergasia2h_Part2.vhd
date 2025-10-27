library ieee;
use ieee.std_logic_1164.all;

--ftiaxno to basiko entity ths 16bit alu xrhsimopoiontas os component thn 1bitalu kai to kykloma elegxou
entity ergasia2h_Part2 is
    port (
        a:          in  std_logic_vector (15 downto 0);
        b:          in  std_logic_vector (15 downto 0);
        opcode:     in  std_logic_vector (2 downto 0);
        result:     out std_logic_vector (15 downto 0);
        carryout:   out std_logic
    );
end entity;

architecture foo of ergasia2h_Part2 is--arxitektoniki ths 16bit alu
    component alu_1_bit is
        port (
            a:          in  std_logic;
            b:          in  std_logic;
            ainvert:    in  std_logic;
            binvert:    in  std_logic;
            carryin:    in  std_logic;
            operation:  in  std_logic_vector (1 downto 0);
            f:     out std_logic;
            carryout:   out std_logic
        );
    end component;
    component controlcircuit is
        port (
            opcode:     in  std_logic_vector(2 downto 0);--to opcode einai arithmos 3 bit
            signala:    out std_logic;
            signalb:    out std_logic;
            operation:  out std_logic_vector(1 downto 0);
            carryin:    out std_logic  
        );
    end component;
	 
	 --dinoume shmata stous inverters ston epilogea(operation) kai sto kratoumeno

    signal ainvert:     std_logic;
    signal binvert:     std_logic;
    signal operation:   std_logic_vector (1 downto 0);
    signal carry:       std_logic_vector (16 downto 0);
begin

CONTROL_CIRCUIT:
    controlcircuit
        port map (
            opcode => opcode,
            signala => ainvert,
            signalb => binvert,
            operation => operation,
            carryin => carry(0)   -- gia +1 sthn periptosi epiloghs praksis sub
        );

GEN_ALU:
    for i in 0 to 15 generate--ektelo thn alu1bit 16 fores ,mia gia kathe bit
ALU:
        alu_1_bit
            port map (
                a => a(i),
                b => b(i),
                ainvert => ainvert,
                binvert => binvert,
                carryin => carry(i),
                operation => operation,
                f => result(i),
                carryout => carry(i + 1) --to carry out einai to kratoumeno apo to apotelesma toy i + 1 arithmou
            );
    end generate;

    carryout <= carry(16) when opcode = "010" or opcode = "011"  else '0';--elegxos uperxilisis kai diasosis kratoumenoy

end architecture;