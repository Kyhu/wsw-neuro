LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity rng_n3900_r128_t5_k32_scc71_SR is
  generic(K:integer);
  port(clk:in std_logic; ce:in std_logic; din:in std_logic; dout:out std_logic);
end ;

architecture RTL of rng_n3900_r128_t5_k32_scc71_SR is
  signal bits : std_logic_vector(0 to K);
begin
	bits(0) <= din;
	process(clk) begin
		if(rising_edge(clk) and (ce='1')) then
			bits(1 to K) <= bits(0 to K-1);
		end if;
	end process;
	dout <= bits(K);
end;

library ieee;
use ieee.std_logic_1164.all;

entity rng_n3900_r128_t5_k32_scc71 is
  port(
    clk:in std_logic;
    ce:in std_logic;
    mode:in std_logic;
    s_in:in std_logic;
    s_out:out std_logic;
    rng:out std_logic_vector(127 downto 0)
  );
end rng_n3900_r128_t5_k32_scc71;

architecture RTL of rng_n3900_r128_t5_k32_scc71 is

	component rng_n3900_r128_t5_k32_scc71_SR is
	  generic(K:integer);
	  port(clk:in std_logic; ce:in std_logic; din:in std_logic; dout:out std_logic);
	end component ;

  signal fifo_out, r_out:std_logic_vector(127 downto 0);
begin
  rng(0) <= r_out(124);
  rng(1) <= r_out(120);
  rng(2) <= r_out(31);
  rng(3) <= r_out(89);
  rng(4) <= r_out(38);
  rng(5) <= r_out(122);
  rng(6) <= r_out(104);
  rng(7) <= r_out(83);
  rng(8) <= r_out(78);
  rng(9) <= r_out(50);
  rng(10) <= r_out(33);
  rng(11) <= r_out(119);
  rng(12) <= r_out(79);
  rng(13) <= r_out(125);
  rng(14) <= r_out(52);
  rng(15) <= r_out(98);
  rng(16) <= r_out(91);
  rng(17) <= r_out(97);
  rng(18) <= r_out(49);
  rng(19) <= r_out(16);
  rng(20) <= r_out(105);
  rng(21) <= r_out(41);
  rng(22) <= r_out(73);
  rng(23) <= r_out(99);
  rng(24) <= r_out(92);
  rng(25) <= r_out(39);
  rng(26) <= r_out(54);
  rng(27) <= r_out(109);
  rng(28) <= r_out(48);
  rng(29) <= r_out(113);
  rng(30) <= r_out(126);
  rng(31) <= r_out(34);
  rng(32) <= r_out(47);
  rng(33) <= r_out(82);
  rng(34) <= r_out(63);
  rng(35) <= r_out(116);
  rng(36) <= r_out(102);
  rng(37) <= r_out(45);
  rng(38) <= r_out(103);
  rng(39) <= r_out(28);
  rng(40) <= r_out(87);
  rng(41) <= r_out(60);
  rng(42) <= r_out(3);
  rng(43) <= r_out(59);
  rng(44) <= r_out(68);
  rng(45) <= r_out(40);
  rng(46) <= r_out(108);
  rng(47) <= r_out(7);
  rng(48) <= r_out(90);
  rng(49) <= r_out(96);
  rng(50) <= r_out(64);
  rng(51) <= r_out(80);
  rng(52) <= r_out(56);
  rng(53) <= r_out(22);
  rng(54) <= r_out(20);
  rng(55) <= r_out(10);
  rng(56) <= r_out(44);
  rng(57) <= r_out(67);
  rng(58) <= r_out(62);
  rng(59) <= r_out(72);
  rng(60) <= r_out(57);
  rng(61) <= r_out(117);
  rng(62) <= r_out(36);
  rng(63) <= r_out(58);
  rng(64) <= r_out(15);
  rng(65) <= r_out(25);
  rng(66) <= r_out(26);
  rng(67) <= r_out(14);
  rng(68) <= r_out(71);
  rng(69) <= r_out(121);
  rng(70) <= r_out(27);
  rng(71) <= r_out(4);
  rng(72) <= r_out(127);
  rng(73) <= r_out(24);
  rng(74) <= r_out(114);
  rng(75) <= r_out(19);
  rng(76) <= r_out(75);
  rng(77) <= r_out(95);
  rng(78) <= r_out(32);
  rng(79) <= r_out(9);
  rng(80) <= r_out(18);
  rng(81) <= r_out(76);
  rng(82) <= r_out(21);
  rng(83) <= r_out(66);
  rng(84) <= r_out(61);
  rng(85) <= r_out(70);
  rng(86) <= r_out(110);
  rng(87) <= r_out(11);
  rng(88) <= r_out(42);
  rng(89) <= r_out(115);
  rng(90) <= r_out(118);
  rng(91) <= r_out(35);
  rng(92) <= r_out(74);
  rng(93) <= r_out(100);
  rng(94) <= r_out(84);
  rng(95) <= r_out(51);
  rng(96) <= r_out(101);
  rng(97) <= r_out(0);
  rng(98) <= r_out(55);
  rng(99) <= r_out(43);
  rng(100) <= r_out(46);
  rng(101) <= r_out(123);
  rng(102) <= r_out(53);
  rng(103) <= r_out(69);
  rng(104) <= r_out(65);
  rng(105) <= r_out(85);
  rng(106) <= r_out(111);
  rng(107) <= r_out(13);
  rng(108) <= r_out(29);
  rng(109) <= r_out(2);
  rng(110) <= r_out(5);
  rng(111) <= r_out(8);
  rng(112) <= r_out(112);
  rng(113) <= r_out(77);
  rng(114) <= r_out(30);
  rng(115) <= r_out(37);
  rng(116) <= r_out(12);
  rng(117) <= r_out(23);
  rng(118) <= r_out(93);
  rng(119) <= r_out(81);
  rng(120) <= r_out(106);
  rng(121) <= r_out(17);
  rng(122) <= r_out(94);
  rng(123) <= r_out(6);
  rng(124) <= r_out(1);
  rng(125) <= r_out(107);
  rng(126) <= r_out(88);
  rng(127) <= r_out(86);
  s_out <= fifo_out(10);
  regs : process(clk) begin
    if(rising_edge(clk) and (ce='1')) then
      r_out(0)<=(mode and fifo_out(0)) or ((not mode) and ('0' xor fifo_out(125) xor fifo_out(0) xor fifo_out(5) xor fifo_out(52) xor fifo_out(121)));
      r_out(1)<=(mode and fifo_out(1)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(14) xor fifo_out(28) xor fifo_out(42) xor fifo_out(13)));
      r_out(2)<=(mode and fifo_out(2)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(73) xor fifo_out(97) xor fifo_out(102) xor fifo_out(16)));
      r_out(3)<=(mode and fifo_out(3)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(3) xor fifo_out(116) xor fifo_out(57) xor fifo_out(47)));
      r_out(4)<=(mode and fifo_out(4)) or ((not mode) and ('0' xor fifo_out(116) xor fifo_out(55) xor fifo_out(22) xor fifo_out(4) xor fifo_out(114)));
      r_out(5)<=(mode and fifo_out(5)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(8) xor fifo_out(59) xor fifo_out(85)));
      r_out(6)<=(mode and fifo_out(6)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(127) xor fifo_out(64) xor fifo_out(22) xor fifo_out(6)));
      r_out(7)<=(mode and fifo_out(7)) or ((not mode) and ('0' xor fifo_out(32) xor fifo_out(89) xor fifo_out(90) xor fifo_out(7) xor fifo_out(25)));
      r_out(8)<=(mode and fifo_out(8)) or ((not mode) and ('0' xor fifo_out(8) xor fifo_out(80) xor fifo_out(48) xor fifo_out(98) xor fifo_out(106)));
      r_out(9)<=(mode and fifo_out(9)) or ((not mode) and ('0' xor fifo_out(124) xor fifo_out(119) xor fifo_out(83) xor fifo_out(103) xor fifo_out(9)));
      r_out(10)<=(mode and s_in) or ((not mode) and ('0' xor fifo_out(107) xor fifo_out(51) xor fifo_out(10) xor fifo_out(17)));
      r_out(11)<=(mode and fifo_out(11)) or ((not mode) and ('0' xor fifo_out(73) xor fifo_out(24) xor fifo_out(105) xor fifo_out(109) xor fifo_out(11)));
      r_out(12)<=(mode and fifo_out(12)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(12) xor fifo_out(66) xor fifo_out(84) xor fifo_out(29)));
      r_out(13)<=(mode and fifo_out(13)) or ((not mode) and ('0' xor fifo_out(36) xor fifo_out(122) xor fifo_out(39) xor fifo_out(70) xor fifo_out(13)));
      r_out(14)<=(mode and fifo_out(14)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(14) xor fifo_out(51) xor fifo_out(66) xor fifo_out(99)));
      r_out(15)<=(mode and fifo_out(15)) or ((not mode) and ('0' xor fifo_out(59) xor fifo_out(15) xor fifo_out(106) xor fifo_out(108) xor fifo_out(110)));
      r_out(16)<=(mode and fifo_out(16)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(108) xor fifo_out(9) xor fifo_out(27) xor fifo_out(96)));
      r_out(17)<=(mode and fifo_out(17)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(39) xor fifo_out(100) xor fifo_out(17) xor fifo_out(53)));
      r_out(18)<=(mode and fifo_out(18)) or ((not mode) and ('0' xor fifo_out(76) xor fifo_out(60) xor fifo_out(113) xor fifo_out(82) xor fifo_out(18)));
      r_out(19)<=(mode and fifo_out(19)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(127) xor fifo_out(95) xor fifo_out(19) xor fifo_out(40)));
      r_out(20)<=(mode and fifo_out(20)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(119) xor fifo_out(20) xor fifo_out(49) xor fifo_out(45)));
      r_out(21)<=(mode and fifo_out(21)) or ((not mode) and ('0' xor fifo_out(111) xor fifo_out(67) xor fifo_out(21) xor fifo_out(27) xor fifo_out(29)));
      r_out(22)<=(mode and fifo_out(22)) or ((not mode) and ('0' xor fifo_out(58) xor fifo_out(95) xor fifo_out(109) xor fifo_out(22) xor fifo_out(18)));
      r_out(23)<=(mode and fifo_out(23)) or ((not mode) and ('0' xor fifo_out(74) xor fifo_out(23) xor fifo_out(116) xor fifo_out(112) xor fifo_out(103)));
      r_out(24)<=(mode and fifo_out(24)) or ((not mode) and ('0' xor fifo_out(24) xor fifo_out(75) xor fifo_out(46) xor fifo_out(110) xor fifo_out(29)));
      r_out(25)<=(mode and fifo_out(25)) or ((not mode) and ('0' xor fifo_out(73) xor fifo_out(44) xor fifo_out(16) xor fifo_out(25) xor fifo_out(120)));
      r_out(26)<=(mode and fifo_out(26)) or ((not mode) and ('0' xor fifo_out(126) xor fifo_out(82) xor fifo_out(91) xor fifo_out(26) xor fifo_out(4)));
      r_out(27)<=(mode and fifo_out(27)) or ((not mode) and ('0' xor fifo_out(67) xor fifo_out(48) xor fifo_out(122) xor fifo_out(27) xor fifo_out(84)));
      r_out(28)<=(mode and fifo_out(28)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(20) xor fifo_out(93) xor fifo_out(28) xor fifo_out(50)));
      r_out(29)<=(mode and fifo_out(29)) or ((not mode) and ('0' xor fifo_out(125) xor fifo_out(67) xor fifo_out(47) xor fifo_out(38) xor fifo_out(29)));
      r_out(30)<=(mode and fifo_out(30)) or ((not mode) and ('0' xor fifo_out(94) xor fifo_out(91) xor fifo_out(93) xor fifo_out(30)));
      r_out(31)<=(mode and fifo_out(31)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(35) xor fifo_out(7) xor fifo_out(85) xor fifo_out(38)));
      r_out(32)<=(mode and fifo_out(32)) or ((not mode) and ('0' xor fifo_out(32) xor fifo_out(65) xor fifo_out(89) xor fifo_out(81) xor fifo_out(21)));
      r_out(33)<=(mode and fifo_out(33)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(7) xor fifo_out(63) xor fifo_out(33) xor fifo_out(29)));
      r_out(34)<=(mode and fifo_out(34)) or ((not mode) and ('0' xor fifo_out(34) xor fifo_out(102) xor fifo_out(39) xor fifo_out(18) xor fifo_out(110)));
      r_out(35)<=(mode and fifo_out(35)) or ((not mode) and ('0' xor fifo_out(12) xor fifo_out(65) xor fifo_out(35) xor fifo_out(115) xor fifo_out(117)));
      r_out(36)<=(mode and fifo_out(36)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(36) xor fifo_out(82) xor fifo_out(11) xor fifo_out(70)));
      r_out(37)<=(mode and fifo_out(37)) or ((not mode) and ('0' xor fifo_out(12) xor fifo_out(127) xor fifo_out(52) xor fifo_out(90) xor fifo_out(37)));
      r_out(38)<=(mode and fifo_out(38)) or ((not mode) and ('0' xor fifo_out(65) xor fifo_out(78) xor fifo_out(117) xor fifo_out(6) xor fifo_out(38)));
      r_out(39)<=(mode and fifo_out(39)) or ((not mode) and ('0' xor fifo_out(12) xor fifo_out(0) xor fifo_out(39) xor fifo_out(101) xor fifo_out(40)));
      r_out(40)<=(mode and fifo_out(40)) or ((not mode) and ('0' xor fifo_out(23) xor fifo_out(127) xor fifo_out(57) xor fifo_out(78) xor fifo_out(40)));
      r_out(41)<=(mode and fifo_out(41)) or ((not mode) and ('0' xor fifo_out(80) xor fifo_out(97) xor fifo_out(54) xor fifo_out(41)));
      r_out(42)<=(mode and fifo_out(42)) or ((not mode) and ('0' xor fifo_out(74) xor fifo_out(16) xor fifo_out(42) xor fifo_out(88) xor fifo_out(84)));
      r_out(43)<=(mode and fifo_out(43)) or ((not mode) and ('0' xor fifo_out(43) xor fifo_out(58) xor fifo_out(94) xor fifo_out(91) xor fifo_out(79)));
      r_out(44)<=(mode and fifo_out(44)) or ((not mode) and ('0' xor fifo_out(43) xor fifo_out(44) xor fifo_out(24) xor fifo_out(126) xor fifo_out(105)));
      r_out(45)<=(mode and fifo_out(45)) or ((not mode) and ('0' xor fifo_out(0) xor fifo_out(80) xor fifo_out(39) xor fifo_out(45) xor fifo_out(17)));
      r_out(46)<=(mode and fifo_out(46)) or ((not mode) and ('0' xor fifo_out(23) xor fifo_out(93) xor fifo_out(51) xor fifo_out(46) xor fifo_out(27)));
      r_out(47)<=(mode and fifo_out(47)) or ((not mode) and ('0' xor fifo_out(73) xor fifo_out(59) xor fifo_out(47) xor fifo_out(53) xor fifo_out(117)));
      r_out(48)<=(mode and fifo_out(48)) or ((not mode) and ('0' xor fifo_out(124) xor fifo_out(48) xor fifo_out(98) xor fifo_out(92) xor fifo_out(42)));
      r_out(49)<=(mode and fifo_out(49)) or ((not mode) and ('0' xor fifo_out(23) xor fifo_out(0) xor fifo_out(62) xor fifo_out(49) xor fifo_out(84)));
      r_out(50)<=(mode and fifo_out(50)) or ((not mode) and ('0' xor fifo_out(95) xor fifo_out(87) xor fifo_out(77) xor fifo_out(37) xor fifo_out(50)));
      r_out(51)<=(mode and fifo_out(51)) or ((not mode) and ('0' xor fifo_out(104) xor fifo_out(51) xor fifo_out(11) xor fifo_out(68)));
      r_out(52)<=(mode and fifo_out(52)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(52) xor fifo_out(64) xor fifo_out(101) xor fifo_out(4)));
      r_out(53)<=(mode and fifo_out(53)) or ((not mode) and ('0' xor fifo_out(83) xor fifo_out(112) xor fifo_out(103) xor fifo_out(69) xor fifo_out(53)));
      r_out(54)<=(mode and fifo_out(54)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(55) xor fifo_out(54) xor fifo_out(77) xor fifo_out(9)));
      r_out(55)<=(mode and fifo_out(55)) or ((not mode) and ('0' xor fifo_out(122) xor fifo_out(58) xor fifo_out(55) xor fifo_out(79) xor fifo_out(13)));
      r_out(56)<=(mode and fifo_out(56)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(126) xor fifo_out(109) xor fifo_out(56) xor fifo_out(40)));
      r_out(57)<=(mode and fifo_out(57)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(44) xor fifo_out(57) xor fifo_out(50) xor fifo_out(78)));
      r_out(58)<=(mode and fifo_out(58)) or ((not mode) and ('0' xor fifo_out(34) xor fifo_out(125) xor fifo_out(58) xor fifo_out(64) xor fifo_out(88)));
      r_out(59)<=(mode and fifo_out(59)) or ((not mode) and ('0' xor fifo_out(59) xor fifo_out(87) xor fifo_out(45) xor fifo_out(114) xor fifo_out(6)));
      r_out(60)<=(mode and fifo_out(60)) or ((not mode) and ('0' xor fifo_out(60) xor fifo_out(8) xor fifo_out(113) xor fifo_out(1) xor fifo_out(71)));
      r_out(61)<=(mode and fifo_out(61)) or ((not mode) and ('0' xor fifo_out(124) xor fifo_out(106) xor fifo_out(61) xor fifo_out(22)));
      r_out(62)<=(mode and fifo_out(62)) or ((not mode) and ('0' xor fifo_out(111) xor fifo_out(107) xor fifo_out(62) xor fifo_out(75) xor fifo_out(37)));
      r_out(63)<=(mode and fifo_out(63)) or ((not mode) and ('0' xor fifo_out(74) xor fifo_out(44) xor fifo_out(54) xor fifo_out(63) xor fifo_out(17)));
      r_out(64)<=(mode and fifo_out(64)) or ((not mode) and ('0' xor fifo_out(65) xor fifo_out(58) xor fifo_out(64) xor fifo_out(61) xor fifo_out(99)));
      r_out(65)<=(mode and fifo_out(65)) or ((not mode) and ('0' xor fifo_out(125) xor fifo_out(65) xor fifo_out(83) xor fifo_out(86) xor fifo_out(30)));
      r_out(66)<=(mode and fifo_out(66)) or ((not mode) and ('0' xor fifo_out(48) xor fifo_out(66) xor fifo_out(33) xor fifo_out(47) xor fifo_out(41)));
      r_out(67)<=(mode and fifo_out(67)) or ((not mode) and ('0' xor fifo_out(67) xor fifo_out(119) xor fifo_out(14) xor fifo_out(106) xor fifo_out(40)));
      r_out(68)<=(mode and fifo_out(68)) or ((not mode) and ('0' xor fifo_out(87) xor fifo_out(86) xor fifo_out(78) xor fifo_out(41) xor fifo_out(68)));
      r_out(69)<=(mode and fifo_out(69)) or ((not mode) and ('0' xor fifo_out(43) xor fifo_out(31) xor fifo_out(69) xor fifo_out(10) xor fifo_out(63)));
      r_out(70)<=(mode and fifo_out(70)) or ((not mode) and ('0' xor fifo_out(71) xor fifo_out(70) xor fifo_out(45) xor fifo_out(117) xor fifo_out(6)));
      r_out(71)<=(mode and fifo_out(71)) or ((not mode) and ('0' xor fifo_out(44) xor fifo_out(103) xor fifo_out(21) xor fifo_out(71) xor fifo_out(110)));
      r_out(72)<=(mode and fifo_out(72)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(5) xor fifo_out(52) xor fifo_out(72) xor fifo_out(61)));
      r_out(73)<=(mode and fifo_out(73)) or ((not mode) and ('0' xor fifo_out(73) xor fifo_out(107) xor fifo_out(25) xor fifo_out(45) xor fifo_out(53)));
      r_out(74)<=(mode and fifo_out(74)) or ((not mode) and ('0' xor fifo_out(74) xor fifo_out(89) xor fifo_out(54) xor fifo_out(100) xor fifo_out(120)));
      r_out(75)<=(mode and fifo_out(75)) or ((not mode) and ('0' xor fifo_out(75) xor fifo_out(123) xor fifo_out(71) xor fifo_out(41) xor fifo_out(96)));
      r_out(76)<=(mode and fifo_out(76)) or ((not mode) and ('0' xor fifo_out(76) xor fifo_out(83) xor fifo_out(62) xor fifo_out(70) xor fifo_out(10)));
      r_out(77)<=(mode and fifo_out(77)) or ((not mode) and ('0' xor fifo_out(34) xor fifo_out(77) xor fifo_out(66) xor fifo_out(26) xor fifo_out(10)));
      r_out(78)<=(mode and fifo_out(78)) or ((not mode) and ('0' xor fifo_out(43) xor fifo_out(62) xor fifo_out(71) xor fifo_out(78) xor fifo_out(56)));
      r_out(79)<=(mode and fifo_out(79)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(119) xor fifo_out(79) xor fifo_out(25) xor fifo_out(38)));
      r_out(80)<=(mode and fifo_out(80)) or ((not mode) and ('0' xor fifo_out(80) xor fifo_out(15) xor fifo_out(51) xor fifo_out(92) xor fifo_out(56)));
      r_out(81)<=(mode and fifo_out(81)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(1) xor fifo_out(81) xor fifo_out(7) xor fifo_out(68)));
      r_out(82)<=(mode and fifo_out(82)) or ((not mode) and ('0' xor fifo_out(32) xor fifo_out(76) xor fifo_out(82) xor fifo_out(86) xor fifo_out(108)));
      r_out(83)<=(mode and fifo_out(83)) or ((not mode) and ('0' xor fifo_out(83) xor fifo_out(81) xor fifo_out(121) xor fifo_out(61) xor fifo_out(18)));
      r_out(84)<=(mode and fifo_out(84)) or ((not mode) and ('0' xor fifo_out(107) xor fifo_out(1) xor fifo_out(70) xor fifo_out(26) xor fifo_out(84)));
      r_out(85)<=(mode and fifo_out(85)) or ((not mode) and ('0' xor fifo_out(74) xor fifo_out(81) xor fifo_out(90) xor fifo_out(79) xor fifo_out(85)));
      r_out(86)<=(mode and fifo_out(86)) or ((not mode) and ('0' xor fifo_out(122) xor fifo_out(98) xor fifo_out(121) xor fifo_out(86) xor fifo_out(85)));
      r_out(87)<=(mode and fifo_out(87)) or ((not mode) and ('0' xor fifo_out(8) xor fifo_out(113) xor fifo_out(36) xor fifo_out(87) xor fifo_out(56)));
      r_out(88)<=(mode and fifo_out(88)) or ((not mode) and ('0' xor fifo_out(111) xor fifo_out(55) xor fifo_out(19) xor fifo_out(88) xor fifo_out(13)));
      r_out(89)<=(mode and fifo_out(89)) or ((not mode) and ('0' xor fifo_out(89) xor fifo_out(101) xor fifo_out(69) xor fifo_out(63) xor fifo_out(96)));
      r_out(90)<=(mode and fifo_out(90)) or ((not mode) and ('0' xor fifo_out(104) xor fifo_out(34) xor fifo_out(36) xor fifo_out(90) xor fifo_out(4)));
      r_out(91)<=(mode and fifo_out(91)) or ((not mode) and ('0' xor fifo_out(52) xor fifo_out(102) xor fifo_out(91) xor fifo_out(121) xor fifo_out(46)));
      r_out(92)<=(mode and fifo_out(92)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(72) xor fifo_out(92) xor fifo_out(63) xor fifo_out(115)));
      r_out(93)<=(mode and fifo_out(93)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(93) xor fifo_out(50) xor fifo_out(79) xor fifo_out(114)));
      r_out(94)<=(mode and fifo_out(94)) or ((not mode) and ('0' xor fifo_out(89) xor fifo_out(14) xor fifo_out(112) xor fifo_out(94) xor fifo_out(100)));
      r_out(95)<=(mode and fifo_out(95)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(95) xor fifo_out(22) xor fifo_out(4) xor fifo_out(120)));
      r_out(96)<=(mode and fifo_out(96)) or ((not mode) and ('0' xor fifo_out(76) xor fifo_out(105) xor fifo_out(54) xor fifo_out(37) xor fifo_out(96)));
      r_out(97)<=(mode and fifo_out(97)) or ((not mode) and ('0' xor fifo_out(97) xor fifo_out(55) xor fifo_out(75) xor fifo_out(98) xor fifo_out(99)));
      r_out(98)<=(mode and fifo_out(98)) or ((not mode) and ('0' xor fifo_out(111) xor fifo_out(8) xor fifo_out(98) xor fifo_out(21) xor fifo_out(42)));
      r_out(99)<=(mode and fifo_out(99)) or ((not mode) and ('0' xor fifo_out(60) xor fifo_out(48) xor fifo_out(46) xor fifo_out(47) xor fifo_out(99)));
      r_out(100)<=(mode and fifo_out(100)) or ((not mode) and ('0' xor fifo_out(76) xor fifo_out(94) xor fifo_out(72) xor fifo_out(100) xor fifo_out(114)));
      r_out(101)<=(mode and fifo_out(101)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(126) xor fifo_out(64) xor fifo_out(101) xor fifo_out(88)));
      r_out(102)<=(mode and fifo_out(102)) or ((not mode) and ('0' xor fifo_out(102) xor fifo_out(94) xor fifo_out(19) xor fifo_out(7) xor fifo_out(99)));
      r_out(103)<=(mode and fifo_out(103)) or ((not mode) and ('0' xor fifo_out(62) xor fifo_out(103) xor fifo_out(28) xor fifo_out(86) xor fifo_out(77)));
      r_out(104)<=(mode and fifo_out(104)) or ((not mode) and ('0' xor fifo_out(104) xor fifo_out(0) xor fifo_out(46) xor fifo_out(123) xor fifo_out(92)));
      r_out(105)<=(mode and fifo_out(105)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(105) xor fifo_out(72) xor fifo_out(49) xor fifo_out(96)));
      r_out(106)<=(mode and fifo_out(106)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(90) xor fifo_out(106) xor fifo_out(88) xor fifo_out(56)));
      r_out(107)<=(mode and fifo_out(107)) or ((not mode) and ('0' xor fifo_out(107) xor fifo_out(20) xor fifo_out(75) xor fifo_out(25) xor fifo_out(108)));
      r_out(108)<=(mode and fifo_out(108)) or ((not mode) and ('0' xor fifo_out(34) xor fifo_out(28) xor fifo_out(123) xor fifo_out(108) xor fifo_out(66)));
      r_out(109)<=(mode and fifo_out(109)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(77) xor fifo_out(109) xor fifo_out(9) xor fifo_out(33)));
      r_out(110)<=(mode and fifo_out(110)) or ((not mode) and ('0' xor fifo_out(112) xor fifo_out(102) xor fifo_out(50) xor fifo_out(115) xor fifo_out(110)));
      r_out(111)<=(mode and fifo_out(111)) or ((not mode) and ('0' xor fifo_out(111) xor fifo_out(93) xor fifo_out(57) xor fifo_out(30) xor fifo_out(68)));
      r_out(112)<=(mode and fifo_out(112)) or ((not mode) and ('0' xor fifo_out(32) xor fifo_out(113) xor fifo_out(112) xor fifo_out(20) xor fifo_out(26)));
      r_out(113)<=(mode and fifo_out(113)) or ((not mode) and ('0' xor fifo_out(104) xor fifo_out(113) xor fifo_out(91) xor fifo_out(49) xor fifo_out(18)));
      r_out(114)<=(mode and fifo_out(114)) or ((not mode) and ('0' xor fifo_out(124) xor fifo_out(67) xor fifo_out(123) xor fifo_out(92) xor fifo_out(114)));
      r_out(115)<=(mode and fifo_out(115)) or ((not mode) and ('0' xor fifo_out(32) xor fifo_out(35) xor fifo_out(69) xor fifo_out(33) xor fifo_out(115)));
      r_out(116)<=(mode and fifo_out(116)) or ((not mode) and ('0' xor fifo_out(104) xor fifo_out(23) xor fifo_out(116) xor fifo_out(105) xor fifo_out(101)));
      r_out(117)<=(mode and fifo_out(117)) or ((not mode) and ('0' xor fifo_out(21) xor fifo_out(11) xor fifo_out(117) xor fifo_out(85) xor fifo_out(6)));
      r_out(118)<=(mode and fifo_out(118)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(14) xor fifo_out(82) xor fifo_out(35) xor fifo_out(27)));
      r_out(119)<=(mode and fifo_out(119)) or ((not mode) and ('0' xor fifo_out(116) xor fifo_out(119) xor fifo_out(97) xor fifo_out(87) xor fifo_out(17)));
      r_out(120)<=(mode and fifo_out(120)) or ((not mode) and ('0' xor fifo_out(60) xor fifo_out(35) xor fifo_out(109) xor fifo_out(33) xor fifo_out(120)));
      r_out(121)<=(mode and fifo_out(121)) or ((not mode) and ('0' xor fifo_out(60) xor fifo_out(81) xor fifo_out(121) xor fifo_out(42) xor fifo_out(115)));
      r_out(122)<=(mode and fifo_out(122)) or ((not mode) and ('0' xor fifo_out(36) xor fifo_out(20) xor fifo_out(24) xor fifo_out(122) xor fifo_out(120)));
      r_out(123)<=(mode and fifo_out(123)) or ((not mode) and ('0' xor fifo_out(24) xor fifo_out(123) xor fifo_out(100) xor fifo_out(69) xor fifo_out(30)));
      r_out(124)<=(mode and fifo_out(124)) or ((not mode) and ('0' xor fifo_out(124) xor fifo_out(97) xor fifo_out(95) xor fifo_out(9) xor fifo_out(26)));
      r_out(125)<=(mode and fifo_out(125)) or ((not mode) and ('0' xor fifo_out(125) xor fifo_out(12) xor fifo_out(72) xor fifo_out(11) xor fifo_out(41)));
      r_out(126)<=(mode and fifo_out(126)) or ((not mode) and ('0' xor fifo_out(126) xor fifo_out(37) xor fifo_out(49) xor fifo_out(13) xor fifo_out(38)));
      r_out(127)<=(mode and fifo_out(127)) or ((not mode) and ('0' xor fifo_out(43) xor fifo_out(127) xor fifo_out(28) xor fifo_out(57) xor fifo_out(53)));
    end if;
  end process;
 fifo_0 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(1), dout=>fifo_out(0));
 fifo_1 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(2), dout=>fifo_out(1));
 fifo_2 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(3), dout=>fifo_out(2));
 fifo_3 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(4), dout=>fifo_out(3));
 fifo_4 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(5), dout=>fifo_out(4));
 fifo_5 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(6), dout=>fifo_out(5));
 fifo_6 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(7), dout=>fifo_out(6));
 fifo_7 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(8), dout=>fifo_out(7));
 fifo_8 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(9), dout=>fifo_out(8));
 fifo_9 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(10), dout=>fifo_out(9));
 fifo_10 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(11), dout=>fifo_out(10));
 fifo_11 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(12), dout=>fifo_out(11));
 fifo_12 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(13), dout=>fifo_out(12));
 fifo_13 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(14), dout=>fifo_out(13));
 fifo_14 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(15), dout=>fifo_out(14));
 fifo_15 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(16), dout=>fifo_out(15));
 fifo_16 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(17), dout=>fifo_out(16));
 fifo_17 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(18), dout=>fifo_out(17));
 fifo_18 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(19), dout=>fifo_out(18));
 fifo_19 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>24)
    port map(clk=>clk, ce=>ce, din=>r_out(20), dout=>fifo_out(19));
 fifo_20 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(21), dout=>fifo_out(20));
 fifo_21 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(22), dout=>fifo_out(21));
 fifo_22 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(23), dout=>fifo_out(22));
 fifo_23 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(24), dout=>fifo_out(23));
 fifo_24 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(25), dout=>fifo_out(24));
 fifo_25 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(26), dout=>fifo_out(25));
 fifo_26 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(27), dout=>fifo_out(26));
 fifo_27 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(28), dout=>fifo_out(27));
 fifo_28 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(29), dout=>fifo_out(28));
 fifo_29 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(30), dout=>fifo_out(29));
 fifo_30 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(31), dout=>fifo_out(30));
 fifo_31 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(32), dout=>fifo_out(31));
 fifo_32 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(33), dout=>fifo_out(32));
 fifo_33 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>25)
    port map(clk=>clk, ce=>ce, din=>r_out(34), dout=>fifo_out(33));
 fifo_34 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(35), dout=>fifo_out(34));
 fifo_35 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(36), dout=>fifo_out(35));
 fifo_36 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(37), dout=>fifo_out(36));
 fifo_37 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(38), dout=>fifo_out(37));
 fifo_38 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(39), dout=>fifo_out(38));
 fifo_39 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(40), dout=>fifo_out(39));
 fifo_40 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(41), dout=>fifo_out(40));
 fifo_41 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(42), dout=>fifo_out(41));
 fifo_42 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(43), dout=>fifo_out(42));
 fifo_43 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(44), dout=>fifo_out(43));
 fifo_44 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>23)
    port map(clk=>clk, ce=>ce, din=>r_out(45), dout=>fifo_out(44));
 fifo_45 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(46), dout=>fifo_out(45));
 fifo_46 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(47), dout=>fifo_out(46));
 fifo_47 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(48), dout=>fifo_out(47));
 fifo_48 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(49), dout=>fifo_out(48));
 fifo_49 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(50), dout=>fifo_out(49));
 fifo_50 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(51), dout=>fifo_out(50));
 fifo_51 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(52), dout=>fifo_out(51));
 fifo_52 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>16)
    port map(clk=>clk, ce=>ce, din=>r_out(53), dout=>fifo_out(52));
 fifo_53 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(54), dout=>fifo_out(53));
 fifo_54 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>24)
    port map(clk=>clk, ce=>ce, din=>r_out(55), dout=>fifo_out(54));
 fifo_55 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(56), dout=>fifo_out(55));
 fifo_56 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(57), dout=>fifo_out(56));
 fifo_57 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(58), dout=>fifo_out(57));
 fifo_58 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(59), dout=>fifo_out(58));
 fifo_59 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>24)
    port map(clk=>clk, ce=>ce, din=>r_out(60), dout=>fifo_out(59));
 fifo_60 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(61), dout=>fifo_out(60));
 fifo_61 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(62), dout=>fifo_out(61));
 fifo_62 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(63), dout=>fifo_out(62));
 fifo_63 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>17)
    port map(clk=>clk, ce=>ce, din=>r_out(64), dout=>fifo_out(63));
 fifo_64 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(65), dout=>fifo_out(64));
 fifo_65 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(66), dout=>fifo_out(65));
 fifo_66 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(67), dout=>fifo_out(66));
 fifo_67 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(68), dout=>fifo_out(67));
 fifo_68 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(69), dout=>fifo_out(68));
 fifo_69 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(70), dout=>fifo_out(69));
 fifo_70 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>24)
    port map(clk=>clk, ce=>ce, din=>r_out(71), dout=>fifo_out(70));
 fifo_71 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(72), dout=>fifo_out(71));
 fifo_72 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(73), dout=>fifo_out(72));
 fifo_73 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(74), dout=>fifo_out(73));
 fifo_74 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(75), dout=>fifo_out(74));
 fifo_75 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(76), dout=>fifo_out(75));
 fifo_76 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(77), dout=>fifo_out(76));
 fifo_77 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(78), dout=>fifo_out(77));
 fifo_78 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(79), dout=>fifo_out(78));
 fifo_79 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(80), dout=>fifo_out(79));
 fifo_80 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(81), dout=>fifo_out(80));
 fifo_81 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(82), dout=>fifo_out(81));
 fifo_82 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(83), dout=>fifo_out(82));
 fifo_83 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(84), dout=>fifo_out(83));
 fifo_84 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(85), dout=>fifo_out(84));
 fifo_85 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(86), dout=>fifo_out(85));
 fifo_86 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(87), dout=>fifo_out(86));
 fifo_87 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(88), dout=>fifo_out(87));
 fifo_88 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(89), dout=>fifo_out(88));
 fifo_89 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(90), dout=>fifo_out(89));
 fifo_90 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(91), dout=>fifo_out(90));
 fifo_91 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(92), dout=>fifo_out(91));
 fifo_92 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>21)
    port map(clk=>clk, ce=>ce, din=>r_out(93), dout=>fifo_out(92));
 fifo_93 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(94), dout=>fifo_out(93));
 fifo_94 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(95), dout=>fifo_out(94));
 fifo_95 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(96), dout=>fifo_out(95));
 fifo_96 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(97), dout=>fifo_out(96));
 fifo_97 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(98), dout=>fifo_out(97));
 fifo_98 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(99), dout=>fifo_out(98));
 fifo_99 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(100), dout=>fifo_out(99));
 fifo_100 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(101), dout=>fifo_out(100));
 fifo_101 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(102), dout=>fifo_out(101));
 fifo_102 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>19)
    port map(clk=>clk, ce=>ce, din=>r_out(103), dout=>fifo_out(102));
 fifo_103 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>24)
    port map(clk=>clk, ce=>ce, din=>r_out(104), dout=>fifo_out(103));
 fifo_104 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(105), dout=>fifo_out(104));
 fifo_105 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(106), dout=>fifo_out(105));
 fifo_106 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(107), dout=>fifo_out(106));
 fifo_107 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(108), dout=>fifo_out(107));
 fifo_108 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(109), dout=>fifo_out(108));
 fifo_109 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(110), dout=>fifo_out(109));
 fifo_110 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(111), dout=>fifo_out(110));
 fifo_111 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(112), dout=>fifo_out(111));
 fifo_112 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(113), dout=>fifo_out(112));
 fifo_113 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(114), dout=>fifo_out(113));
 fifo_114 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(115), dout=>fifo_out(114));
 fifo_115 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(116), dout=>fifo_out(115));
 fifo_116 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(117), dout=>fifo_out(116));
 fifo_117 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(118), dout=>fifo_out(117));
 fifo_118 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(119), dout=>fifo_out(118));
 fifo_119 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(120), dout=>fifo_out(119));
 fifo_120 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(121), dout=>fifo_out(120));
 fifo_121 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(122), dout=>fifo_out(121));
 fifo_122 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(123), dout=>fifo_out(122));
 fifo_123 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(124), dout=>fifo_out(123));
 fifo_124 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(125), dout=>fifo_out(124));
 fifo_125 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(126), dout=>fifo_out(125));
 fifo_126 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(127), dout=>fifo_out(126));
 fifo_127 :  rng_n3900_r128_t5_k32_scc71_SR generic map (K=>24)
    port map(clk=>clk, ce=>ce, din=>r_out(0), dout=>fifo_out(127));
end RTL;
