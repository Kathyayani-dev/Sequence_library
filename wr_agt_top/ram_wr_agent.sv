# code for ram_wr_agt
  ...
  //------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_wr_agent from uvm_agent
class ram_wr_agent extends uvm_agent;

   // Factory Registration
        `uvm_component_utils(ram_wr_agent)

   // Declare handle for configuration class ram_wr_agent_config
    ram_wr_agent_config m_cfg;

   // Declare handles of ram_wr_monitor,ram_wr_sequencer and ram_wr_driver
        ram_wr_monitor monh;
        ram_wr_sequencer seqrh;
        ram_wr_driver drvh;

        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Standard UVM Methods :
        extern function new(string name = "ram_wr_agent", uvm_component parent = null);
        extern function void build_phase(uvm_phase phase);
        extern function void connect_phase(uvm_phase phase);

endclass : ram_wr_agent
//-----------------  constructor new method  -------------------//

function ram_wr_agent::new(string name = "ram_wr_agent",
                           uvm_component parent = null);
        super.new(name, parent);
endfunction
...
