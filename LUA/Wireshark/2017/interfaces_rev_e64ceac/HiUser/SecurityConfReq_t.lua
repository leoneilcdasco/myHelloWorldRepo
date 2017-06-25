local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_SecurityConfReq'
end
function module:messageId()
  return 0x0709
end
----------------------------------------------------------------
local HIUSER_SECURITYCONFREQ_T = Proto('HiUser_SecurityConfReq_t', 'HIUSER_SECURITYCONFREQ_T')
local HiUser_SecurityConfReq_t = HIUSER_SECURITYCONFREQ_T.fields
HiUser_SecurityConfReq_t.ueFsID = ProtoField.uint16('HiUser_SecurityConfReq_t.ueFsID', 'ueFsID', base.HEX)
HiUser_SecurityConfReq_t.logicalChannelId = ProtoField.uint8('HiUser_SecurityConfReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_SecurityConfReq_t.logicalChannelId_padding = ProtoField.int8('HiUser_SecurityConfReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiUser_SecurityConfReq_t.bearerIndex = ProtoField.uint16('HiUser_SecurityConfReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_SecurityConfReq_t.bearerGroup = ProtoField.uint16('HiUser_SecurityConfReq_t.bearerGroup', 'bearerGroup', base.HEX)
local HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS = Proto('HiUser_SecurityConfReq_t_securityParams', 'HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS')
local HiUser_SecurityConfReq_t_securityParams = HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS.fields
local HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY = Proto('HiUser_SecurityConfReq_t_securityParams_integrityKey', 'HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY')
local HiUser_SecurityConfReq_t_securityParams_integrityKey = HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY.fields
local HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY = Proto('HiUser_SecurityConfReq_t_securityParams_integrityKey_key', 'HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY')
local HiUser_SecurityConfReq_t_securityParams_integrityKey_key = HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY.fields
HiUser_SecurityConfReq_t_securityParams_integrityKey_key.key_length = ProtoField.uint32('HiUser_SecurityConfReq_t_securityParams_integrityKey_key.key_length', 'key_length', base.HEX)
HiUser_SecurityConfReq_t_securityParams_integrityKey_key.key_values = ProtoField.bytes('HiUser_SecurityConfReq_t_securityParams_integrityKey_key.key_values', 'key_values', base.HEX)
HiUser_SecurityConfReq_t_securityParams.integrityAlgorithm = ProtoField.bytes('HiUser_SecurityConfReq_t_securityParams.integrityAlgorithm', 'integrityAlgorithm', base.HEX)
HiUser_SecurityConfReq_t_securityParams.integrityAlgorithm_padding = ProtoField.bytes('HiUser_SecurityConfReq_t_securityParams.integrityAlgorithm_padding', 'integrityAlgorithm_padding', base.HEX)
local HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY = Proto('HiUser_SecurityConfReq_t_securityParams_encryptionKey', 'HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY')
local HiUser_SecurityConfReq_t_securityParams_encryptionKey = HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY.fields
local HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY = Proto('HiUser_SecurityConfReq_t_securityParams_encryptionKey_key', 'HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY')
local HiUser_SecurityConfReq_t_securityParams_encryptionKey_key = HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY.fields
HiUser_SecurityConfReq_t_securityParams_encryptionKey_key.key_length = ProtoField.uint32('HiUser_SecurityConfReq_t_securityParams_encryptionKey_key.key_length', 'key_length', base.HEX)
HiUser_SecurityConfReq_t_securityParams_encryptionKey_key.key_values = ProtoField.bytes('HiUser_SecurityConfReq_t_securityParams_encryptionKey_key.key_values', 'key_values', base.HEX)
HiUser_SecurityConfReq_t_securityParams.encryptionAlgorithm = ProtoField.bytes('HiUser_SecurityConfReq_t_securityParams.encryptionAlgorithm', 'encryptionAlgorithm', base.HEX)
HiUser_SecurityConfReq_t_securityParams.encryptionAlgorithm_padding = ProtoField.bytes('HiUser_SecurityConfReq_t_securityParams.encryptionAlgorithm_padding', 'encryptionAlgorithm_padding', base.HEX)
HiUser_SecurityConfReq_t_securityParams.keyRefreshMargin = ProtoField.uint32('HiUser_SecurityConfReq_t_securityParams.keyRefreshMargin', 'keyRefreshMargin', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_SECURITYCONFREQ_T, buffer())
  subtree:set_text('HiUser_SecurityConfReq_t')
  subtree:add_le (HiUser_SecurityConfReq_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityConfReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityConfReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityConfReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityConfReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
  local HiUser_SecurityConfReq_t_securityParamsTree = subtree:add (HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS, buffer(offset))
  HiUser_SecurityConfReq_t_securityParamsTree:set_text('HiUser_SecurityConfReq_t_securityParams')
  local HiUser_SecurityConfReq_t_securityParams_integrityKeyTree = HiUser_SecurityConfReq_t_securityParamsTree:add (HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY, buffer(offset))
  HiUser_SecurityConfReq_t_securityParams_integrityKeyTree:set_text('HiUser_SecurityConfReq_t_securityParams_integrityKey')
  local HiUser_SecurityConfReq_t_securityParams_integrityKey_keyTree = HiUser_SecurityConfReq_t_securityParams_integrityKeyTree:add (HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY, buffer(offset))
  HiUser_SecurityConfReq_t_securityParams_integrityKey_keyTree:set_text('HiUser_SecurityConfReq_t_securityParams_integrityKey_key')
  HiUser_SecurityConfReq_t_securityParams_integrityKey_keyTree:add_le (HiUser_SecurityConfReq_t_securityParams_integrityKey_key.key_length, buffer(offset, 4))
  offset = offset + 4
  HiUser_SecurityConfReq_t_securityParams_integrityKey_keyTree:add_le (HiUser_SecurityConfReq_t_securityParams_integrityKey_key.key_values, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  HiUser_SecurityConfReq_t_securityParamsTree:add_le (HiUser_SecurityConfReq_t_securityParams.integrityAlgorithm, buffer(offset, 1))
  offset = offset + 1
  HiUser_SecurityConfReq_t_securityParamsTree:add_le (HiUser_SecurityConfReq_t_securityParams.integrityAlgorithm_padding, buffer(offset, 3))
  offset = offset + 3
  local HiUser_SecurityConfReq_t_securityParams_encryptionKeyTree = HiUser_SecurityConfReq_t_securityParamsTree:add (HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY, buffer(offset))
  HiUser_SecurityConfReq_t_securityParams_encryptionKeyTree:set_text('HiUser_SecurityConfReq_t_securityParams_encryptionKey')
  local HiUser_SecurityConfReq_t_securityParams_encryptionKey_keyTree = HiUser_SecurityConfReq_t_securityParams_encryptionKeyTree:add (HIUSER_SECURITYCONFREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY, buffer(offset))
  HiUser_SecurityConfReq_t_securityParams_encryptionKey_keyTree:set_text('HiUser_SecurityConfReq_t_securityParams_encryptionKey_key')
  HiUser_SecurityConfReq_t_securityParams_encryptionKey_keyTree:add_le (HiUser_SecurityConfReq_t_securityParams_encryptionKey_key.key_length, buffer(offset, 4))
  offset = offset + 4
  HiUser_SecurityConfReq_t_securityParams_encryptionKey_keyTree:add_le (HiUser_SecurityConfReq_t_securityParams_encryptionKey_key.key_values, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  HiUser_SecurityConfReq_t_securityParamsTree:add_le (HiUser_SecurityConfReq_t_securityParams.encryptionAlgorithm, buffer(offset, 1))
  offset = offset + 1
  HiUser_SecurityConfReq_t_securityParamsTree:add_le (HiUser_SecurityConfReq_t_securityParams.encryptionAlgorithm_padding, buffer(offset, 3))
  offset = offset + 3
  HiUser_SecurityConfReq_t_securityParamsTree:add_le (HiUser_SecurityConfReq_t_securityParams.keyRefreshMargin, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
