local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_TraceReq'
end
function module:messageId()
  return 0x0a5d
end
----------------------------------------------------------------
local L1LOG_TRACEREQ_T = Proto('L1Log_TraceReq_t', 'L1LOG_TRACEREQ_T')
local L1Log_TraceReq_t = L1LOG_TRACEREQ_T.fields
local L1LOG_TRACEREQ_T_HEADER = Proto('L1Log_TraceReq_t_header', 'L1LOG_TRACEREQ_T_HEADER')
local L1Log_TraceReq_t_header = L1LOG_TRACEREQ_T_HEADER.fields
L1Log_TraceReq_t_header.subcellId = ProtoField.uint8('L1Log_TraceReq_t_header.subcellId', 'subcellId', base.DEC)
L1Log_TraceReq_t_header.subcellId_padding = ProtoField.bytes('L1Log_TraceReq_t_header.subcellId_padding', 'subcellId_padding', base.HEX)
L1Log_TraceReq_t_header.TraceClientIPaddress = ProtoField.uint32('L1Log_TraceReq_t_header.TraceClientIPaddress', 'TraceClientIPaddress', base.HEX)
L1Log_TraceReq_t_header.TraceClientPort = ProtoField.uint16('L1Log_TraceReq_t_header.TraceClientPort', 'TraceClientPort', base.HEX)
L1Log_TraceReq_t_header.start_stop_report = ProtoField.uint8('L1Log_TraceReq_t_header.start_stop_report', 'start_stop_report', base.HEX)
L1Log_TraceReq_t_header.output_mode = ProtoField.uint8('L1Log_TraceReq_t_header.output_mode', 'output_mode', base.HEX)
local L1LOG_TRACEREQ_T_CONFIG = Proto('L1Log_TraceReq_t_config', 'L1LOG_TRACEREQ_T_CONFIG')
local L1Log_TraceReq_t_config = L1LOG_TRACEREQ_T_CONFIG.fields
L1Log_TraceReq_t_config.trace_id = ProtoField.uint16('L1Log_TraceReq_t_config.trace_id', 'trace_id', base.HEX)
L1Log_TraceReq_t_config.periodicity = ProtoField.uint16('L1Log_TraceReq_t_config.periodicity', 'periodicity', base.HEX)
L1Log_TraceReq_t_config.nb_reports = ProtoField.uint16('L1Log_TraceReq_t_config.nb_reports', 'nb_reports', base.HEX)
L1Log_TraceReq_t_config.nb_reports_padding = ProtoField.bytes('L1Log_TraceReq_t_config.nb_reports_padding', 'nb_reports_padding', base.HEX)
L1Log_TraceReq_t_config.filtering_parameters = ProtoField.bytes('L1Log_TraceReq_t_config.filtering_parameters', 'filtering_parameters', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_TRACEREQ_T, buffer())
  subtree:set_text('L1Log_TraceReq_t')
  local L1Log_TraceReq_t_headerTree = subtree:add (L1LOG_TRACEREQ_T_HEADER, buffer(offset))
  L1Log_TraceReq_t_headerTree:set_text('L1Log_TraceReq_t_header')
  L1Log_TraceReq_t_headerTree:add_le (L1Log_TraceReq_t_header.subcellId, buffer(offset, 1))
  offset = offset + 1
  L1Log_TraceReq_t_headerTree:add_le (L1Log_TraceReq_t_header.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
  L1Log_TraceReq_t_headerTree:add_le (L1Log_TraceReq_t_header.TraceClientIPaddress, buffer(offset, 4))
  offset = offset + 4
  L1Log_TraceReq_t_headerTree:add_le (L1Log_TraceReq_t_header.TraceClientPort, buffer(offset, 2))
  offset = offset + 2
  L1Log_TraceReq_t_headerTree:add_le (L1Log_TraceReq_t_header.start_stop_report, buffer(offset, 1))
  offset = offset + 1
  L1Log_TraceReq_t_headerTree:add_le (L1Log_TraceReq_t_header.output_mode, buffer(offset, 1))
  offset = offset + 1
  local L1Log_TraceReq_t_configTree = subtree:add (L1LOG_TRACEREQ_T_CONFIG, buffer(offset))
  L1Log_TraceReq_t_configTree:set_text('L1Log_TraceReq_t_config')
  L1Log_TraceReq_t_configTree:add_le (L1Log_TraceReq_t_config.trace_id, buffer(offset, 2))
  offset = offset + 2
  L1Log_TraceReq_t_configTree:add_le (L1Log_TraceReq_t_config.periodicity, buffer(offset, 2))
  offset = offset + 2
  L1Log_TraceReq_t_configTree:add_le (L1Log_TraceReq_t_config.nb_reports, buffer(offset, 2))
  offset = offset + 2
  L1Log_TraceReq_t_configTree:add_le (L1Log_TraceReq_t_config.nb_reports_padding, buffer(offset, 2))
  offset = offset + 2
  L1Log_TraceReq_t_configTree:add_le (L1Log_TraceReq_t_config.filtering_parameters, buffer(offset, ( (msglen >= 32) and 32 or (msglen-offset) )))
  offset = offset + ( (msglen >= 32) and 32 or (msglen-offset) )
end
----------------------------------------------------------------
return module
