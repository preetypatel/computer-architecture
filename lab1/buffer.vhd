library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MY_BUFFER is
    port (
        A : in std_logic;
        Y : out std_logic
    );
end entity MY_BUFFER;

architecture Dataflow of MY_BUFFER is
begin
    Y <= A;
end architecture Dataflow;