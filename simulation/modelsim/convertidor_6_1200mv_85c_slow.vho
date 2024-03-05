-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/29/2024 16:13:26"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	convertidor IS
    PORT (
	entrada : IN std_logic_vector(6 DOWNTO 0);
	orden_dia : BUFFER std_logic_vector(3 DOWNTO 0);
	es_laborable : BUFFER std_logic;
	an : IN std_logic;
	segmentos : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END convertidor;

-- Design Ports Information
-- orden_dia[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- orden_dia[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- orden_dia[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- orden_dia[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- es_laborable	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- an	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF convertidor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_orden_dia : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_es_laborable : std_logic;
SIGNAL ww_an : std_logic;
SIGNAL ww_segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL \an~input_o\ : std_logic;
SIGNAL \orden_dia[0]~output_o\ : std_logic;
SIGNAL \orden_dia[1]~output_o\ : std_logic;
SIGNAL \orden_dia[2]~output_o\ : std_logic;
SIGNAL \orden_dia[3]~output_o\ : std_logic;
SIGNAL \es_laborable~output_o\ : std_logic;
SIGNAL \segmentos[0]~output_o\ : std_logic;
SIGNAL \segmentos[1]~output_o\ : std_logic;
SIGNAL \segmentos[2]~output_o\ : std_logic;
SIGNAL \segmentos[3]~output_o\ : std_logic;
SIGNAL \segmentos[4]~output_o\ : std_logic;
SIGNAL \segmentos[5]~output_o\ : std_logic;
SIGNAL \segmentos[6]~output_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
orden_dia <= ww_orden_dia;
es_laborable <= ww_es_laborable;
ww_an <= an;
segmentos <= ww_segmentos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N16
\orden_dia[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \orden_dia[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\orden_dia[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \orden_dia[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\orden_dia[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \orden_dia[2]~output_o\);

-- Location: IOOBUF_X37_Y29_N9
\orden_dia[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \orden_dia[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\es_laborable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \es_laborable~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\segmentos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentos[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\segmentos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentos[1]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\segmentos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentos[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\segmentos[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentos[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\segmentos[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentos[4]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\segmentos[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentos[5]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\segmentos[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentos[6]~output_o\);

-- Location: IOIBUF_X0_Y8_N8
\entrada[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\entrada[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\entrada[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\entrada[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\entrada[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\entrada[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N8
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\entrada[2]~input_o\ & (!\entrada[6]~input_o\ & (!\entrada[4]~input_o\ & !\entrada[0]~input_o\))) # (!\entrada[2]~input_o\ & ((\entrada[6]~input_o\ & (!\entrada[4]~input_o\ & !\entrada[0]~input_o\)) # (!\entrada[6]~input_o\ & 
-- (\entrada[4]~input_o\ $ (\entrada[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[6]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X0_Y8_N22
\entrada[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: LCCOMB_X1_Y8_N30
\Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (!\entrada[1]~input_o\ & (!\entrada[5]~input_o\ & (\Mux2~2_combout\ & !\entrada[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[5]~input_o\,
	datac => \Mux2~2_combout\,
	datad => \entrada[3]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X1_Y8_N12
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\entrada[1]~input_o\ & (!\entrada[6]~input_o\ & (!\entrada[2]~input_o\ & !\entrada[5]~input_o\))) # (!\entrada[1]~input_o\ & ((\entrada[6]~input_o\ & (!\entrada[2]~input_o\ & !\entrada[5]~input_o\)) # (!\entrada[6]~input_o\ & 
-- (\entrada[2]~input_o\ $ (\entrada[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[6]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \entrada[5]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\entrada[3]~input_o\ & (!\entrada[0]~input_o\ & (!\entrada[4]~input_o\ & \Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X1_Y8_N0
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\entrada[3]~input_o\ & (!\entrada[6]~input_o\ & (!\entrada[4]~input_o\ & !\entrada[5]~input_o\))) # (!\entrada[3]~input_o\ & ((\entrada[6]~input_o\ & (!\entrada[4]~input_o\ & !\entrada[5]~input_o\)) # (!\entrada[6]~input_o\ & 
-- (\entrada[4]~input_o\ $ (\entrada[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datab => \entrada[6]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \entrada[5]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y8_N26
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\entrada[1]~input_o\ & (!\entrada[0]~input_o\ & (!\entrada[2]~input_o\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y8_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\entrada[1]~input_o\ & (!\entrada[5]~input_o\ & !\entrada[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[5]~input_o\,
	datad => \entrada[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y8_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\entrada[2]~input_o\ & (\Equal0~0_combout\ & !\entrada[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \entrada[4]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X3_Y0_N15
\an~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_an,
	o => \an~input_o\);

ww_orden_dia(0) <= \orden_dia[0]~output_o\;

ww_orden_dia(1) <= \orden_dia[1]~output_o\;

ww_orden_dia(2) <= \orden_dia[2]~output_o\;

ww_orden_dia(3) <= \orden_dia[3]~output_o\;

ww_es_laborable <= \es_laborable~output_o\;

ww_segmentos(0) <= \segmentos[0]~output_o\;

ww_segmentos(1) <= \segmentos[1]~output_o\;

ww_segmentos(2) <= \segmentos[2]~output_o\;

ww_segmentos(3) <= \segmentos[3]~output_o\;

ww_segmentos(4) <= \segmentos[4]~output_o\;

ww_segmentos(5) <= \segmentos[5]~output_o\;

ww_segmentos(6) <= \segmentos[6]~output_o\;
END structure;


