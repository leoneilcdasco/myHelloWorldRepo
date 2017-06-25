local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_STransactionResponse'
end
function module:messageId()
  return 0x6009
end
----------------------------------------------------------------
local CPCM_STRANSACTIONRESPONSE = Proto('CpCm_STransactionResponse', 'CPCM_STRANSACTIONRESPONSE')
local CpCm_STransactionResponse = CPCM_STRANSACTIONRESPONSE.fields
CpCm_STransactionResponse.result = ProtoField.bytes('CpCm_STransactionResponse.result', 'result', base.HEX)
CpCm_STransactionResponse.result_padding = ProtoField.bytes('CpCm_STransactionResponse.result_padding', 'result_padding', base.HEX)
CpCm_STransactionResponse.transactionId = ProtoField.uint32('CpCm_STransactionResponse.transactionId', 'transactionId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_STRANSACTIONRESPONSE, buffer())
  subtree:set_text('CpCm_STransactionResponse')
  subtree:add_le (CpCm_STransactionResponse.result, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_STransactionResponse.result_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (CpCm_STransactionResponse.transactionId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
