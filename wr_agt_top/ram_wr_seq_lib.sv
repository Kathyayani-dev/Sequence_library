# code ram_wr_seq_lib
...
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


  // Extend ram_wr_seq_lib from uvm_sequence_library parameterized by write_xtn
        class ram_wr_seq_lib extends uvm_sequence_library #(write_xtn);

        // Factory registration using `uvm_object_utils

        `uvm_object_utils(ram_wr_seq_lib)
        `uvm_sequence_library_utils(ram_wr_seq_lib)
//------------------------------------------
// METHODS
//------------------------------------------

// Standard UVM Methods:
        extern function new(string name ="ram_wbase_seq");
        endclass
//-----------------  constructor new method  -------------------//
        function ram_wr_seq_lib::new(string name ="ram_wbase_seq");
                super.new(name);
                //add ram_rand_wr_xtns,ram_single_addr_wr_xtns to sequence library using the method add_typewide_sequences
                // call the method init_sequence_library
                add_typewide_sequences({ram_rand_wr_xtns::get_type(),
                                      ram_single_addr_wr_xtns::get_type()});
                init_sequence_library();
        endfunction

...
