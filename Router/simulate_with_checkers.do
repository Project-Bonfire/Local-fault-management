#########################################
# Copyright (C) 2016 Project Bonfire    #
#                                       #
# This file is automatically generated! #
#             DO NOT EDIT!              #
#########################################

vlib work

# Include files and compile them
vcom "RTL/with_checkers/mlite_pack.vhd"
vcom "RTL/with_checkers/component_pack.vhd"

vcom "RTL/with_checkers/FIFO_one_hot_credit_based_packet_drop_classifier_support_with_checkers/FIFO_one_hot_credit_based_packet_drop_classifier_support_checkers.vhd"
vcom "RTL/with_checkers/FIFO_one_hot_credit_based_packet_drop_classifier_support_with_checkers/FIFO_one_hot_credit_based_packet_drop_classifier_support_with_checkers.vhd"
vcom "RTL/with_checkers/counter_threshold.vhd"

vcom "RTL/with_checkers/LBDR_packet_drop_with_checkers/LBDR_packet_drop_routing_part_pseudo_checkers.vhd"
vcom "RTL/with_checkers/LBDR_packet_drop_with_checkers/Cx_Reconf_pseudo_checkers.vhd"
vcom "RTL/with_checkers/LBDR_packet_drop_with_checkers/Rxy_Reconf_pseudo_checkers.vhd"
vcom "RTL/with_checkers/LBDR_packet_drop_with_checkers/LBDR_bubble_comb.vhd"
vcom "RTL/with_checkers/LBDR_packet_drop_with_checkers/LBDR_bubble_seq.vhd"
vcom "RTL/with_checkers/LBDR_packet_drop_with_checkers/LBDR_bubble_combinatory_with_sequencial.vhd"
#vcom "RTL/with_checkers/LBDR_packet_drop_with_checkers/LBDR_packet_drop_with_checkers.vhd"
vcom "RTL/with_checkers/ParityChecker_for_LBDR.vhd"

vcom "RTL/with_checkers/Allocator_with_checkers/Arbiter_in_one_hot_checkers.vhd"
vcom "RTL/with_checkers/Allocator_with_checkers/Arbiter_in_one_hot_with_checkers.vhd"
vcom "RTL/with_checkers/Allocator_with_checkers/Arbiter_out_one_hot_pseudo_checkers.vhd"
vcom "RTL/with_checkers/Allocator_with_checkers/arbiter_out_one_hot_with_checkers.vhd"
vcom "RTL/with_checkers/Allocator_with_checkers/allocator_logic_pseudo_checkers.vhd"
vcom "RTL/with_checkers/Allocator_with_checkers/allocator_credit_counter_logic_pseudo_checkers.vhd"
vcom "RTL/with_checkers/Allocator_with_checkers/allocator_with_checkers.vhd"

vcom "RTL/with_checkers/xbar.vhd"

vcom "RTL/with_checkers/Router_32_bit_credit_based_packet_drop_classifier_SHMU_will_full_set_of_checkers_control_part.vhd"
vcom "RTL/with_checkers/Router_32_bit_credit_based_packet_drop_classifier_SHMU_will_full_set_of_checkers.vhd"

vcom "Testbench/TB_Package_32_bit_credit_based.vhd"
vcom "Testbench/network_4x4_credit_based.vhd"
vcom "Testbench/network_4x4_Rand_credit_based_tb.vhd"

# Start the simulation
vsim work.tb_network_4x4

# Draw waves
 do wave_4x4.do
# Run the simulation
 run 2210 ns
force -freeze sim/:tb_network_4x4:NoC:R_0:CONTROL_PART_WITH_CHECKERS:LBDR_L:LBDR_bubble_comb_c:Req_S_FF '0' 1ns
force -freeze sim/:tb_network_4x4:NoC:R_0:CONTROL_PART_WITH_CHECKERS:LBDR_L:LBDR_bubble_comb_c:Req_S_in_sig '1' 1ns
force -deposit sim/:tb_network_4x4:NoC:R_0:CONTROL_PART_WITH_CHECKERS:LBDR_L:LBDR_bubble_comb_c:empty '1' 1ns
run 4000 ns
noforce sim/:tb_network_4x4:NoC:R_0:CONTROL_PART_WITH_CHECKERS:LBDR_L:LBDR_bubble_comb_c:Req_S_FF
noforce sim/:tb_network_4x4:NoC:R_0:CONTROL_PART_WITH_CHECKERS:LBDR_L:LBDR_bubble_comb_c:Req_S_in_sig
noforce sim/:tb_network_4x4:NoC:R_0:CONTROL_PART_WITH_CHECKERS:LBDR_L:LBDR_bubble_comb_c:empty
run 11000 ns
