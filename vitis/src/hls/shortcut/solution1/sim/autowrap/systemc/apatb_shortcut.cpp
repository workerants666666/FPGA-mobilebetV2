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
#define AUTOTB_TVIN_IN1  "../tv/cdatafile/c.shortcut.autotvin_IN1.dat"
// wrapc file define: "IN2"
#define AUTOTB_TVIN_IN2  "../tv/cdatafile/c.shortcut.autotvin_IN2.dat"
// wrapc file define: "OUT_r"
#define AUTOTB_TVOUT_OUT_r  "../tv/cdatafile/c.shortcut.autotvout_OUT_r.dat"
#define AUTOTB_TVIN_OUT_r  "../tv/cdatafile/c.shortcut.autotvin_OUT_r.dat"
// wrapc file define: "src1_V"
#define AUTOTB_TVIN_src1_V  "../tv/cdatafile/c.shortcut.autotvin_src1_V.dat"
// wrapc file define: "src2_V"
#define AUTOTB_TVIN_src2_V  "../tv/cdatafile/c.shortcut.autotvin_src2_V.dat"
// wrapc file define: "dest_V"
#define AUTOTB_TVIN_dest_V  "../tv/cdatafile/c.shortcut.autotvin_dest_V.dat"
// wrapc file define: "length_r"
#define AUTOTB_TVIN_length_r  "../tv/cdatafile/c.shortcut.autotvin_length_r.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "OUT_r"
#define AUTOTB_TVOUT_PC_OUT_r  "../tv/rtldatafile/rtl.shortcut.autotvout_OUT_r.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			IN1_depth = 0;
			IN2_depth = 0;
			OUT_r_depth = 0;
			src1_V_depth = 0;
			src2_V_depth = 0;
			dest_V_depth = 0;
			length_r_depth = 0;
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
			total_list << "{OUT_r " << OUT_r_depth << "}\n";
			total_list << "{src1_V " << src1_V_depth << "}\n";
			total_list << "{src2_V " << src2_V_depth << "}\n";
			total_list << "{dest_V " << dest_V_depth << "}\n";
			total_list << "{length_r " << length_r_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int IN1_depth;
		int IN2_depth;
		int OUT_r_depth;
		int src1_V_depth;
		int src2_V_depth;
		int dest_V_depth;
		int length_r_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void shortcut (
ap_int<64>* src1,
ap_int<64>* src2,
ap_int<64>* dest,
int length);

void AESL_WRAP_shortcut (
ap_int<64>* src1,
ap_int<64>* src2,
ap_int<64>* dest,
int length)
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

			sc_bv<64> *OUT_r_pc_buffer = new sc_bv<64>[2500];
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
						// celement: dest.V(63, 0)
						// {
							sc_lv<64>* dest_V_lv0_0_2499_1 = new sc_lv<64>[2500];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: dest.V(63, 0)
						{
							// carray: (0) => (2499) @ (1)
							for (int i_0 = 0; i_0 <= 2499; i_0 += 1)
							{
								if (&(dest[0]) != NULL) // check the null address if the c port is array or others
								{
									dest_V_lv0_0_2499_1[hls_map_index].range(63, 0) = sc_bv<64>(OUT_r_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: dest.V(63, 0)
						{
							// carray: (0) => (2499) @ (1)
							for (int i_0 = 0; i_0 <= 2499; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : dest[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : dest[0]
								// output_left_conversion : dest[i_0]
								// output_type_conversion : (dest_V_lv0_0_2499_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(dest[0]) != NULL) // check the null address if the c port is array or others
								{
									dest[i_0] = (dest_V_lv0_0_2499_1[hls_map_index]).to_string(SC_BIN).c_str();
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

		// "OUT_r"
		char* tvin_OUT_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_OUT_r);
		char* tvout_OUT_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_OUT_r);

		// "src1_V"
		char* tvin_src1_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_src1_V);

		// "src2_V"
		char* tvin_src2_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_src2_V);

		// "dest_V"
		char* tvin_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_dest_V);

		// "length_r"
		char* tvin_length_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_length_r);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_IN1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_IN1, tvin_IN1);

		sc_bv<64>* IN1_tvin_wrapc_buffer = new sc_bv<64>[2500];

		// RTL Name: IN1
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: src1.V(63, 0)
				{
					// carray: (0) => (2499) @ (1)
					for (int i_0 = 0; i_0 <= 2499; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : src1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : src1[0]
						// regulate_c_name       : src1_V
						// input_type_conversion : (src1[i_0]).to_string(2).c_str()
						if (&(src1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> src1_V_tmp_mem;
							src1_V_tmp_mem = (src1[i_0]).to_string(2).c_str();
							IN1_tvin_wrapc_buffer[hls_map_index].range(63, 0) = src1_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2500; i++)
		{
			sprintf(tvin_IN1, "%s\n", (IN1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_IN1, tvin_IN1);
		}

		tcl_file.set_num(2500, &tcl_file.IN1_depth);
		sprintf(tvin_IN1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_IN1, tvin_IN1);

		// release memory allocation
		delete [] IN1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_IN2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_IN2, tvin_IN2);

		sc_bv<64>* IN2_tvin_wrapc_buffer = new sc_bv<64>[2500];

		// RTL Name: IN2
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: src2.V(63, 0)
				{
					// carray: (0) => (2499) @ (1)
					for (int i_0 = 0; i_0 <= 2499; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : src2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : src2[0]
						// regulate_c_name       : src2_V
						// input_type_conversion : (src2[i_0]).to_string(2).c_str()
						if (&(src2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> src2_V_tmp_mem;
							src2_V_tmp_mem = (src2[i_0]).to_string(2).c_str();
							IN2_tvin_wrapc_buffer[hls_map_index].range(63, 0) = src2_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2500; i++)
		{
			sprintf(tvin_IN2, "%s\n", (IN2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_IN2, tvin_IN2);
		}

		tcl_file.set_num(2500, &tcl_file.IN2_depth);
		sprintf(tvin_IN2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_IN2, tvin_IN2);

		// release memory allocation
		delete [] IN2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_OUT_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);

		sc_bv<64>* OUT_r_tvin_wrapc_buffer = new sc_bv<64>[2500];

		// RTL Name: OUT_r
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: dest.V(63, 0)
				{
					// carray: (0) => (2499) @ (1)
					for (int i_0 = 0; i_0 <= 2499; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : dest[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : dest[0]
						// regulate_c_name       : dest_V
						// input_type_conversion : (dest[i_0]).to_string(2).c_str()
						if (&(dest[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> dest_V_tmp_mem;
							dest_V_tmp_mem = (dest[i_0]).to_string(2).c_str();
							OUT_r_tvin_wrapc_buffer[hls_map_index].range(63, 0) = dest_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2500; i++)
		{
			sprintf(tvin_OUT_r, "%s\n", (OUT_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);
		}

		tcl_file.set_num(2500, &tcl_file.OUT_r_depth);
		sprintf(tvin_OUT_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);

		// release memory allocation
		delete [] OUT_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_src1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_src1_V, tvin_src1_V);

		sc_bv<32> src1_V_tvin_wrapc_buffer;

		// RTL Name: src1_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_src1_V, "%s\n", (src1_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_src1_V, tvin_src1_V);
		}

		tcl_file.set_num(1, &tcl_file.src1_V_depth);
		sprintf(tvin_src1_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_src1_V, tvin_src1_V);

		// [[transaction]]
		sprintf(tvin_src2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_src2_V, tvin_src2_V);

		sc_bv<32> src2_V_tvin_wrapc_buffer;

		// RTL Name: src2_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_src2_V, "%s\n", (src2_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_src2_V, tvin_src2_V);
		}

		tcl_file.set_num(1, &tcl_file.src2_V_depth);
		sprintf(tvin_src2_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_src2_V, tvin_src2_V);

		// [[transaction]]
		sprintf(tvin_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_dest_V, tvin_dest_V);

		sc_bv<32> dest_V_tvin_wrapc_buffer;

		// RTL Name: dest_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_dest_V, "%s\n", (dest_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_dest_V, tvin_dest_V);
		}

		tcl_file.set_num(1, &tcl_file.dest_V_depth);
		sprintf(tvin_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_dest_V, tvin_dest_V);

		// [[transaction]]
		sprintf(tvin_length_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_length_r, tvin_length_r);

		sc_bv<32> length_r_tvin_wrapc_buffer;

		// RTL Name: length_r
		{
			// bitslice(31, 0)
			{
				// celement: length(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : length
						// sub_1st_elem          : 
						// ori_name_1st_elem     : length
						// regulate_c_name       : length
						// input_type_conversion : length
						if (&(length) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> length_tmp_mem;
							length_tmp_mem = length;
							length_r_tvin_wrapc_buffer.range(31, 0) = length_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_length_r, "%s\n", (length_r_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_length_r, tvin_length_r);
		}

		tcl_file.set_num(1, &tcl_file.length_r_depth);
		sprintf(tvin_length_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_length_r, tvin_length_r);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		shortcut(src1, src2, dest, length);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_OUT_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);

		sc_bv<64>* OUT_r_tvout_wrapc_buffer = new sc_bv<64>[2500];

		// RTL Name: OUT_r
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: dest.V(63, 0)
				{
					// carray: (0) => (2499) @ (1)
					for (int i_0 = 0; i_0 <= 2499; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : dest[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : dest[0]
						// regulate_c_name       : dest_V
						// input_type_conversion : (dest[i_0]).to_string(2).c_str()
						if (&(dest[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> dest_V_tmp_mem;
							dest_V_tmp_mem = (dest[i_0]).to_string(2).c_str();
							OUT_r_tvout_wrapc_buffer[hls_map_index].range(63, 0) = dest_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2500; i++)
		{
			sprintf(tvout_OUT_r, "%s\n", (OUT_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);
		}

		tcl_file.set_num(2500, &tcl_file.OUT_r_depth);
		sprintf(tvout_OUT_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);

		// release memory allocation
		delete [] OUT_r_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "IN1"
		delete [] tvin_IN1;
		// release memory allocation: "IN2"
		delete [] tvin_IN2;
		// release memory allocation: "OUT_r"
		delete [] tvout_OUT_r;
		delete [] tvin_OUT_r;
		// release memory allocation: "src1_V"
		delete [] tvin_src1_V;
		// release memory allocation: "src2_V"
		delete [] tvin_src2_V;
		// release memory allocation: "dest_V"
		delete [] tvin_dest_V;
		// release memory allocation: "length_r"
		delete [] tvin_length_r;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

