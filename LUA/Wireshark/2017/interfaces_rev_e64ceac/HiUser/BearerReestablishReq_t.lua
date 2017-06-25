local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerReestablishReq'
end
function module:messageId()
  return 0x0711
end
----------------------------------------------------------------
local HIUSER_BEARERREESTABLISHREQ_T = Proto('HiUser_BearerReestablishReq_t', 'HIUSER_BEARERREESTABLISHREQ_T')
local HiUser_BearerReestablishReq_t = HIUSER_BEARERREESTABLISHREQ_T.fields
HiUser_BearerReestablishReq_t.ueFsId = ProtoField.uint16('HiUser_BearerReestablishReq_t.ueFsId', 'ueFsId', base.HEX)
HiUser_BearerReestablishReq_t.logicalChannelIdentity = ProtoField.uint8('HiUser_BearerReestablishReq_t.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
HiUser_BearerReestablishReq_t.logicalChannelIdentity_padding = ProtoField.int8('HiUser_BearerReestablishReq_t.logicalChannelIdentity_padding', 'logicalChannelIdentity_padding', base.DEC)
HiUser_BearerReestablishReq_t.bearerIndex = ProtoField.uint16('HiUser_BearerReestablishReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_BearerReestablishReq_t.bearerGroup = ProtoField.uint16('HiUser_BearerReestablishReq_t.bearerGroup', 'bearerGroup', base.HEX)
local HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS = Proto('HiUser_BearerReestablishReq_t_securityParams', 'HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS')
local HiUser_BearerReestablishReq_t_securityParams = HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS.fields
local HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY = Proto('HiUser_BearerReestablishReq_t_securityParams_integrityKey', 'HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY')
local HiUser_BearerReestablishReq_t_securityParams_integrityKey = HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY.fields
local HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY = Proto('HiUser_BearerReestablishReq_t_securityParams_integrityKey_key', 'HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY')
local HiUser_BearerReestablishReq_t_securityParams_integrityKey_key = HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY.fields
HiUser_BearerReestablishReq_t_securityParams_integrityKey_key.key_length = ProtoField.uint32('HiUser_BearerReestablishReq_t_securityParams_integrityKey_key.key_length', 'key_length', base.HEX)
HiUser_BearerReestablishReq_t_securityParams_integrityKey_key.key_values = ProtoField.bytes('HiUser_BearerReestablishReq_t_securityParams_integrityKey_key.key_values', 'key_values', base.HEX)
HiUser_BearerReestablishReq_t_securityParams.integrityAlgorithm = ProtoField.bytes('HiUser_BearerReestablishReq_t_securityParams.integrityAlgorithm', 'integrityAlgorithm', base.HEX)
HiUser_BearerReestablishReq_t_securityParams.integrityAlgorithm_padding = ProtoField.bytes('HiUser_BearerReestablishReq_t_securityParams.integrityAlgorithm_padding', 'integrityAlgorithm_padding', base.HEX)
local HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY = Proto('HiUser_BearerReestablishReq_t_securityParams_encryptionKey', 'HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY')
local HiUser_BearerReestablishReq_t_securityParams_encryptionKey = HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY.fields
local HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY = Proto('HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key', 'HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY')
local HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key = HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY.fields
HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key.key_length = ProtoField.uint32('HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key.key_length', 'key_length', base.HEX)
HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key.key_values = ProtoField.bytes('HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key.key_values', 'key_values', base.HEX)
HiUser_BearerReestablishReq_t_securityParams.encryptionAlgorithm = ProtoField.bytes('HiUser_BearerReestablishReq_t_securityParams.encryptionAlgorithm', 'encryptionAlgorithm', base.HEX)
HiUser_BearerReestablishReq_t_securityParams.encryptionAlgorithm_padding = ProtoField.bytes('HiUser_BearerReestablishReq_t_securityParams.encryptionAlgorithm_padding', 'encryptionAlgorithm_padding', base.HEX)
HiUser_BearerReestablishReq_t_securityParams.keyRefreshMargin = ProtoField.uint32('HiUser_BearerReestablishReq_t_securityParams.keyRefreshMargin', 'keyRefreshMargin', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERREESTABLISHREQ_T, buffer())
  subtree:set_text('HiUser_BearerReestablishReq_t')
  subtree:add_le (HiUser_BearerReestablishReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerReestablishReq_t.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerReestablishReq_t.logicalChannelIdentity_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerReestablishReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerReestablishReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
  local HiUser_BearerReestablishReq_t_securityParamsTree = subtree:add (HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS, buffer(offset))
  HiUser_BearerReestablishReq_t_securityParamsTree:set_text('HiUser_BearerReestablishReq_t_securityParams')
  local HiUser_BearerReestablishReq_t_securityParams_integrityKeyTree = HiUser_BearerReestablishReq_t_securityParamsTree:add (HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY, buffer(offset))
  HiUser_BearerReestablishReq_t_securityParams_integrityKeyTree:set_text('HiUser_BearerReestablishReq_t_securityParams_integrityKey')
  local HiUser_BearerReestablishReq_t_securityParams_integrityKey_keyTree = HiUser_BearerReestablishReq_t_securityParams_integrityKeyTree:add (HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY, buffer(offset))
  HiUser_BearerReestablishReq_t_securityParams_integrityKey_keyTree:set_text('HiUser_BearerReestablishReq_t_securityParams_integrityKey_key')
  HiUser_BearerReestablishReq_t_securityParams_integrityKey_keyTree:add_le (HiUser_BearerReestablishReq_t_securityParams_integrityKey_key.key_length, buffer(offset, 4))
  offset = offset + 4
  HiUser_BearerReestablishReq_t_securityParams_integrityKey_keyTree:add_le (HiUser_BearerReestablishReq_t_securityParams_integrityKey_key.key_values, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  HiUser_BearerReestablishReq_t_securityParamsTree:add_le (HiUser_BearerReestablishReq_t_securityParams.integrityAlgorithm, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerReestablishReq_t_securityParamsTree:add_le (HiUser_BearerReestablishReq_t_securityParams.integrityAlgorithm_padding, buffer(offset, 3))
  offset = offset + 3
  local HiUser_BearerReestablishReq_t_securityParams_encryptionKeyTree = HiUser_BearerReestablishReq_t_securityParamsTree:add (HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY, buffer(offset))
  HiUser_BearerReestablishReq_t_securityParams_encryptionKeyTree:set_text('HiUser_BearerReestablishReq_t_securityParams_encryptionKey')
  local HiUser_BearerReestablishReq_t_securityParams_encryptionKey_keyTree = HiUser_BearerReestablishReq_t_securityParams_encryptionKeyTree:add (HIUSER_BEARERREESTABLISHREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY, buffer(offset))
  HiUser_BearerReestablishReq_t_securityParams_encryptionKey_keyTree:set_text('HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key')
  HiUser_BearerReestablishReq_t_securityParams_encryptionKey_keyTree:add_le (HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key.key_length, buffer(offset, 4))
  offset = offset + 4
  HiUser_BearerReestablishReq_t_securityParams_encryptionKey_keyTree:add_le (HiUser_BearerReestablishReq_t_securityParams_encryptionKey_key.key_values, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  HiUser_BearerReestablishReq_t_securityParamsTree:add_le (HiUser_BearerReestablishReq_t_securityParams.encryptionAlgorithm, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerReestablishReq_t_securityParamsTree:add_le (HiUser_BearerReestablishReq_t_securityParams.encryptionAlgorithm_padding, buffer(offset, 3))
  offset = offset + 3
  HiUser_BearerReestablishReq_t_securityParamsTree:add_le (HiUser_BearerReestablishReq_t_securityParams.keyRefreshMargin, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
