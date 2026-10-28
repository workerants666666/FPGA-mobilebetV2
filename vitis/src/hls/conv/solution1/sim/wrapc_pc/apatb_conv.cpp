// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "IN1"
#define AUTOTB_TVIN_IN1  "../tv/cdatafile/c.conv.autotvin_IN1.dat"
// wrapc file define: "IN2"
#define AUTOTB_TVIN_IN2  "../tv/cdatafile/c.conv.autotvin_IN2.dat"
// wrapc file define: "IN3"
#define AUTOTB_TVIN_IN3  "../tv/cdatafile/c.conv.autotvin_IN3.dat"
// wrapc file define: "W"
#define AUTOTB_TVIN_W  "../tv/cdatafile/c.conv.autotvin_W.dat"
// wrapc file define: "OUT_r"
#define AUTOTB_TVOUT_OUT_r  "../tv/cdatafile/c.conv.autotvout_OUT_r.dat"
#define AUTOTB_TVIN_OUT_r  "../tv/cdatafile/c.conv.autotvin_OUT_r.dat"
// wrapc file define: "in1_V"
#define AUTOTB_TVIN_in1_V  "../tv/cdatafile/c.conv.autotvin_in1_V.dat"
// wrapc file define: "in2_V"
#define AUTOTB_TVIN_in2_V  "../tv/cdatafile/c.conv.autotvin_in2_V.dat"
// wrapc file define: "in3_V"
#define AUTOTB_TVIN_in3_V  "../tv/cdatafile/c.conv.autotvin_in3_V.dat"
// wrapc file define: "weight_V"
#define AUTOTB_TVIN_weight_V  "../tv/cdatafile/c.conv.autotvin_weight_V.dat"
// wrapc file define: "bias_V"
#define AUTOTB_TVIN_bias_V  "../tv/cdatafile/c.conv.autotvin_bias_V.dat"
// wrapc file define: "out_V"
#define AUTOTB_TVIN_out_V  "../tv/cdatafile/c.conv.autotvin_out_V.dat"
// wrapc file define: "offset"
#define AUTOTB_TVIN_offset  "../tv/cdatafile/c.conv.autotvin_offset.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "OUT_r"
#define AUTOTB_TVOUT_PC_OUT_r  "../tv/rtldatafile/rtl.conv.autotvout_OUT_r.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			IN1_depth = 0;
			IN2_depth = 0;
			IN3_depth = 0;
			W_depth = 0;
			OUT_r_depth = 0;
			in1_V_depth = 0;
			in2_V_depth = 0;
			in3_V_depth = 0;
			weight_V_depth = 0;
			bias_V_depth = 0;
			out_V_depth = 0;
			offset_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{IN1 " << IN1_depth << "}\n";
			total_list << "{IN2 " << IN2_depth << "}\n";
			total_list << "{IN3 " << IN3_depth << "}\n";
			total_list << "{W " << W_depth << "}\n";
			total_list << "{OUT_r " << OUT_r_depth << "}\n";
			total_list << "{in1_V " << in1_V_depth << "}\n";
			total_list << "{in2_V " << in2_V_depth << "}\n";
			total_list << "{in3_V " << in3_V_depth << "}\n";
			total_list << "{weight_V " << weight_V_depth << "}\n";
			total_list << "{bias_V " << bias_V_depth << "}\n";
			total_list << "{out_V " << out_V_depth << "}\n";
			total_list << "{offset " << offset_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int IN1_depth;
		int IN2_depth;
		int IN3_depth;
		int W_depth;
		int OUT_r_depth;
		int in1_V_depth;
		int in2_V_depth;
		int in3_V_depth;
		int weight_V_depth;
		int bias_V_depth;
		int out_V_depth;
		int offset_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void conv (
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* in1,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* in2,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* in3,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* weight,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* bias,
ap_int<64>* out,
int offset);

void AESL_WRAP_conv (
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* in1,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* in2,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* in3,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* weight,
ap_fixed<16, 6, (ap_q_mode) 0, (ap_o_mode)0, 0>* bias,
ap_int<64>* out,
int offset)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "OUT_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_token); // data

			sc_bv<64> *OUT_r_pc_buffer = new sc_bv<64>[100352];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'OUT_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'OUT_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					OUT_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_OUT_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: OUT_r
				{
					// bitslice(63, 0)
					// {
						// celement: out.V(63, 0)
						// {
							sc_lv<64>* out_V_lv0_0_100351_1 = new sc_lv<64>[100352];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: out.V(63, 0)
						{
							// carray: (0) => (100351) @ (1)
							for (int i_0 = 0; i_0 <= 100351; i_0 += 1)
							{
								if (&(out[0]) != NULL) // check the null address if the c port is array or others
								{
									out_V_lv0_0_100351_1[hls_map_index].range(63, 0) = sc_bv<64>(OUT_r_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: out.V(63, 0)
						{
							// carray: (0) => (100351) @ (1)
							for (int i_0 = 0; i_0 <= 100351; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0]
								// output_left_conversion : out[i_0]
								// output_type_conversion : (out_V_lv0_0_100351_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0]) != NULL) // check the null address if the c port is array or others
								{
									out[i_0] = (out_V_lv0_0_100351_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] OUT_r_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "IN1"
		char* tvin_IN1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_IN1);

		// "IN2"
		char* tvin_IN2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_IN2);

		// "IN3"
		char* tvin_IN3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_IN3);

		// "W"
		char* tvin_W = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_W);

		// "OUT_r"
		char* tvin_OUT_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_OUT_r);
		char* tvout_OUT_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_OUT_r);

		// "in1_V"
		char* tvin_in1_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in1_V);

		// "in2_V"
		char* tvin_in2_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in2_V);

		// "in3_V"
		char* tvin_in3_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in3_V);

		// "weight_V"
		char* tvin_weight_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_weight_V);

		// "bias_V"
		char* tvin_bias_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_bias_V);

		// "out_V"
		char* tvin_out_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_V);

		// "offset"
		char* tvin_offset = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_offset);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_IN1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_IN1, tvin_IN1);

		sc_bv<16>* IN1_tvin_wrapc_buffer = new sc_bv<16>[151040];

		// RTL Name: IN1
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: in1.V(15, 0)
				{
					// carray: (0) => (151039) @ (1)
					for (int i_0 = 0; i_0 <= 151039; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in1[0]
						// regulate_c_name       : in1_V
						// input_type_conversion : (in1[i_0]).range().to_string(SC_BIN).c_str()
						if (&(in1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> in1_V_tmp_mem;
							in1_V_tmp_mem = (in1[i_0]).range().to_string(SC_BIN).c_str();
							IN1_tvin_wrapc_buffer[hls_map_index].range(15, 0) = in1_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 151040; i++)
		{
			sprintf(tvin_IN1, "%s\n", (IN1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_IN1, tvin_IN1);
		}

		tcl_file.set_num(151040, &tcl_file.IN1_depth);
		sprintf(tvin_IN1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_IN1, tvin_IN1);

		// release memory allocation
		delete [] IN1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_IN2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_IN2, tvin_IN2);

		sc_bv<16>* IN2_tvin_wrapc_buffer = new sc_bv<16>[151040];

		// RTL Name: IN2
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: in2.V(15, 0)
				{
					// carray: (0) => (151039) @ (1)
					for (int i_0 = 0; i_0 <= 151039; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in2[0]
						// regulate_c_name       : in2_V
						// input_type_conversion : (in2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(in2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> in2_V_tmp_mem;
							in2_V_tmp_mem = (in2[i_0]).range().to_string(SC_BIN).c_str();
							IN2_tvin_wrapc_buffer[hls_map_index].range(15, 0) = in2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 151040; i++)
		{
			sprintf(tvin_IN2, "%s\n", (IN2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_IN2, tvin_IN2);
		}

		tcl_file.set_num(151040, &tcl_file.IN2_depth);
		sprintf(tvin_IN2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_IN2, tvin_IN2);

		// release memory allocation
		delete [] IN2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_IN3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_IN3, tvin_IN3);

		sc_bv<16>* IN3_tvin_wrapc_buffer = new sc_bv<16>[151040];

		// RTL Name: IN3
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: in3.V(15, 0)
				{
					// carray: (0) => (151039) @ (1)
					for (int i_0 = 0; i_0 <= 151039; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in3[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in3[0]
						// regulate_c_name       : in3_V
						// input_type_conversion : (in3[i_0]).range().to_string(SC_BIN).c_str()
						if (&(in3[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> in3_V_tmp_mem;
							in3_V_tmp_mem = (in3[i_0]).range().to_string(SC_BIN).c_str();
							IN3_tvin_wrapc_buffer[hls_map_index].range(15, 0) = in3_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 151040; i++)
		{
			sprintf(tvin_IN3, "%s\n", (IN3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_IN3, tvin_IN3);
		}

		tcl_file.set_num(151040, &tcl_file.IN3_depth);
		sprintf(tvin_IN3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_IN3, tvin_IN3);

		// release memory allocation
		delete [] IN3_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_W, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_W, tvin_W);

		sc_bv<16>* W_tvin_wrapc_buffer = new sc_bv<16>[896];

		// RTL Name: W
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: weight.V(15, 0)
				{
					// carray: (0) => (863) @ (1)
					for (int i_0 = 0; i_0 <= 863; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : weight[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : weight[0]
						// regulate_c_name       : weight_V
						// input_type_conversion : (weight[i_0]).range().to_string(SC_BIN).c_str()
						if (&(weight[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> weight_V_tmp_mem;
							weight_V_tmp_mem = (weight[i_0]).range().to_string(SC_BIN).c_str();
							W_tvin_wrapc_buffer[hls_map_index].range(15, 0) = weight_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: bias.V(15, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : bias[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : bias[0]
						// regulate_c_name       : bias_V
						// input_type_conversion : (bias[i_0]).range().to_string(SC_BIN).c_str()
						if (&(bias[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> bias_V_tmp_mem;
							bias_V_tmp_mem = (bias[i_0]).range().to_string(SC_BIN).c_str();
							W_tvin_wrapc_buffer[hls_map_index].range(15, 0) = bias_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 896; i++)
		{
			sprintf(tvin_W, "%s\n", (W_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_W, tvin_W);
		}

		tcl_file.set_num(896, &tcl_file.W_depth);
		sprintf(tvin_W, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_W, tvin_W);

		// release memory allocation
		delete [] W_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_OUT_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);

		sc_bv<64>* OUT_r_tvin_wrapc_buffer = new sc_bv<64>[100352];

		// RTL Name: OUT_r
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: out.V(63, 0)
				{
					// carray: (0) => (100351) @ (1)
					for (int i_0 = 0; i_0 <= 100351; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0]
						// regulate_c_name       : out_V
						// input_type_conversion : (out[i_0]).to_string(2).c_str()
						if (&(out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> out_V_tmp_mem;
							out_V_tmp_mem = (out[i_0]).to_string(2).c_str();
							OUT_r_tvin_wrapc_buffer[hls_map_index].range(63, 0) = out_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100352; i++)
		{
			sprintf(tvin_OUT_r, "%s\n", (OUT_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);
		}

		tcl_file.set_num(100352, &tcl_file.OUT_r_depth);
		sprintf(tvin_OUT_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);

		// release memory allocation
		delete [] OUT_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_in1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in1_V, tvin_in1_V);

		sc_bv<32> in1_V_tvin_wrapc_buffer;

		// RTL Name: in1_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_in1_V, "%s\n", (in1_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in1_V, tvin_in1_V);
		}

		tcl_file.set_num(1, &tcl_file.in1_V_depth);
		sprintf(tvin_in1_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in1_V, tvin_in1_V);

		// [[transaction]]
		sprintf(tvin_in2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in2_V, tvin_in2_V);

		sc_bv<32> in2_V_tvin_wrapc_buffer;

		// RTL Name: in2_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_in2_V, "%s\n", (in2_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in2_V, tvin_in2_V);
		}

		tcl_file.set_num(1, &tcl_file.in2_V_depth);
		sprintf(tvin_in2_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in2_V, tvin_in2_V);

		// [[transaction]]
		sprintf(tvin_in3_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in3_V, tvin_in3_V);

		sc_bv<32> in3_V_tvin_wrapc_buffer;

		// RTL Name: in3_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_in3_V, "%s\n", (in3_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in3_V, tvin_in3_V);
		}

		tcl_file.set_num(1, &tcl_file.in3_V_depth);
		sprintf(tvin_in3_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in3_V, tvin_in3_V);

		// [[transaction]]
		sprintf(tvin_weight_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_weight_V, tvin_weight_V);

		sc_bv<32> weight_V_tvin_wrapc_buffer;

		// RTL Name: weight_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_weight_V, "%s\n", (weight_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_weight_V, tvin_weight_V);
		}

		tcl_file.set_num(1, &tcl_file.weight_V_depth);
		sprintf(tvin_weight_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_weight_V, tvin_weight_V);

		// [[transaction]]
		sprintf(tvin_bias_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_bias_V, tvin_bias_V);

		sc_bv<32> bias_V_tvin_wrapc_buffer;

		// RTL Name: bias_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_bias_V, "%s\n", (bias_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_bias_V, tvin_bias_V);
		}

		tcl_file.set_num(1, &tcl_file.bias_V_depth);
		sprintf(tvin_bias_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_bias_V, tvin_bias_V);

		// [[transaction]]
		sprintf(tvin_out_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_V, tvin_out_V);

		sc_bv<32> out_V_tvin_wrapc_buffer;

		// RTL Name: out_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_out_V, "%s\n", (out_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_V, tvin_out_V);
		}

		tcl_file.set_num(1, &tcl_file.out_V_depth);
		sprintf(tvin_out_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_V, tvin_out_V);

		// [[transaction]]
		sprintf(tvin_offset, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_offset, tvin_offset);

		sc_bv<32> offset_tvin_wrapc_buffer;

		// RTL Name: offset
		{
			// bitslice(31, 0)
			{
				// celement: offset(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : offset
						// sub_1st_elem          : 
						// ori_name_1st_elem     : offset
						// regulate_c_name       : offset
						// input_type_conversion : offset
						if (&(offset) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> offset_tmp_mem;
							offset_tmp_mem = offset;
							offset_tvin_wrapc_buffer.range(31, 0) = offset_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_offset, "%s\n", (offset_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_offset, tvin_offset);
		}

		tcl_file.set_num(1, &tcl_file.offset_depth);
		sprintf(tvin_offset, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_offset, tvin_offset);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		conv(in1, in2, in3, weight, bias, out, offset);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_OUT_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);

		sc_bv<64>* OUT_r_tvout_wrapc_buffer = new sc_bv<64>[100352];

		// RTL Name: OUT_r
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: out.V(63, 0)
				{
					// carray: (0) => (100351) @ (1)
					for (int i_0 = 0; i_0 <= 100351; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0]
						// regulate_c_name       : out_V
						// input_type_conversion : (out[i_0]).to_string(2).c_str()
						if (&(out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> out_V_tmp_mem;
							out_V_tmp_mem = (out[i_0]).to_string(2).c_str();
							OUT_r_tvout_wrapc_buffer[hls_map_index].range(63, 0) = out_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100352; i++)
		{
			sprintf(tvout_OUT_r, "%s\n", (OUT_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);
		}

		tcl_file.set_num(100352, &tcl_file.OUT_r_depth);
		sprintf(tvout_OUT_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);

		// release memory allocation
		delete [] OUT_r_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "IN1"
		delete [] tvin_IN1;
		// release memory allocation: "IN2"
		delete [] tvin_IN2;
		// release memory allocation: "IN3"
		delete [] tvin_IN3;
		// release memory allocation: "W"
		delete [] tvin_W;
		// release memory allocation: "OUT_r"
		delete [] tvout_OUT_r;
		delete [] tvin_OUT_r;
		// release memory allocation: "in1_V"
		delete [] tvin_in1_V;
		// release memory allocation: "in2_V"
		delete [] tvin_in2_V;
		// release memory allocation: "in3_V"
		delete [] tvin_in3_V;
		// release memory allocation: "weight_V"
		delete [] tvin_weight_V;
		// release memory allocation: "bias_V"
		delete [] tvin_bias_V;
		// release memory allocation: "out_V"
		delete [] tvin_out_V;
		// release memory allocation: "offset"
		delete [] tvin_offset;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

