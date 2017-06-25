local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerSetupReq'
end
function module:messageId()
  return 0x0700
end
----------------------------------------------------------------
local HIUSER_BEARERSETUPREQ_T = Proto('HiUser_BearerSetupReq_t', 'HIUSER_BEARERSETUPREQ_T')
local HiUser_BearerSetupReq_t = HIUSER_BEARERSETUPREQ_T.fields
HiUser_BearerSetupReq_t.ueFsID = ProtoField.uint16('HiUser_BearerSetupReq_t.ueFsID', 'ueFsID', base.HEX)
HiUser_BearerSetupReq_t.logicalChannelId = ProtoField.uint8('HiUser_BearerSetupReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_BearerSetupReq_t.logicalChannelId_padding = ProtoField.int8('HiUser_BearerSetupReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiUser_BearerSetupReq_t.bearerIndex = ProtoField.uint16('HiUser_BearerSetupReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_BearerSetupReq_t.bearerGroup = ProtoField.uint16('HiUser_BearerSetupReq_t.bearerGroup', 'bearerGroup', base.HEX)
HiUser_BearerSetupReq_t.hiSgnlBearerClientAddress = ProtoField.uint32('HiUser_BearerSetupReq_t.hiSgnlBearerClientAddress', 'hiSgnlBearerClientAddress', base.HEX)
HiUser_BearerSetupReq_t.hiUserBearerClientAddress = ProtoField.uint32('HiUser_BearerSetupReq_t.hiUserBearerClientAddress', 'hiUserBearerClientAddress', base.HEX)
HiUser_BearerSetupReq_t.loDataUeId = ProtoField.uint16('HiUser_BearerSetupReq_t.loDataUeId', 'loDataUeId', base.HEX)
HiUser_BearerSetupReq_t.loDataUeId_padding = ProtoField.bytes('HiUser_BearerSetupReq_t.loDataUeId_padding', 'loDataUeId_padding', base.HEX)
HiUser_BearerSetupReq_t.loDataDlRlcPduReceiver = ProtoField.uint32('HiUser_BearerSetupReq_t.loDataDlRlcPduReceiver', 'loDataDlRlcPduReceiver', base.HEX)
HiUser_BearerSetupReq_t.dscp = ProtoField.uint32('HiUser_BearerSetupReq_t.dscp', 'dscp', base.HEX)
local HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS = Proto('HiUser_BearerSetupReq_t_securityParams', 'HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS')
local HiUser_BearerSetupReq_t_securityParams = HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS.fields
local HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY = Proto('HiUser_BearerSetupReq_t_securityParams_integrityKey', 'HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY')
local HiUser_BearerSetupReq_t_securityParams_integrityKey = HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY.fields
local HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY = Proto('HiUser_BearerSetupReq_t_securityParams_integrityKey_key', 'HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY')
local HiUser_BearerSetupReq_t_securityParams_integrityKey_key = HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY.fields
HiUser_BearerSetupReq_t_securityParams_integrityKey_key.key_length = ProtoField.uint32('HiUser_BearerSetupReq_t_securityParams_integrityKey_key.key_length', 'key_length', base.HEX)
HiUser_BearerSetupReq_t_securityParams_integrityKey_key.key_values = ProtoField.bytes('HiUser_BearerSetupReq_t_securityParams_integrityKey_key.key_values', 'key_values', base.HEX)
HiUser_BearerSetupReq_t_securityParams.integrityAlgorithm = ProtoField.bytes('HiUser_BearerSetupReq_t_securityParams.integrityAlgorithm', 'integrityAlgorithm', base.HEX)
HiUser_BearerSetupReq_t_securityParams.integrityAlgorithm_padding = ProtoField.bytes('HiUser_BearerSetupReq_t_securityParams.integrityAlgorithm_padding', 'integrityAlgorithm_padding', base.HEX)
local HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY = Proto('HiUser_BearerSetupReq_t_securityParams_encryptionKey', 'HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY')
local HiUser_BearerSetupReq_t_securityParams_encryptionKey = HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY.fields
local HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY = Proto('HiUser_BearerSetupReq_t_securityParams_encryptionKey_key', 'HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY')
local HiUser_BearerSetupReq_t_securityParams_encryptionKey_key = HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY.fields
HiUser_BearerSetupReq_t_securityParams_encryptionKey_key.key_length = ProtoField.uint32('HiUser_BearerSetupReq_t_securityParams_encryptionKey_key.key_length', 'key_length', base.HEX)
HiUser_BearerSetupReq_t_securityParams_encryptionKey_key.key_values = ProtoField.bytes('HiUser_BearerSetupReq_t_securityParams_encryptionKey_key.key_values', 'key_values', base.HEX)
HiUser_BearerSetupReq_t_securityParams.encryptionAlgorithm = ProtoField.bytes('HiUser_BearerSetupReq_t_securityParams.encryptionAlgorithm', 'encryptionAlgorithm', base.HEX)
HiUser_BearerSetupReq_t_securityParams.encryptionAlgorithm_padding = ProtoField.bytes('HiUser_BearerSetupReq_t_securityParams.encryptionAlgorithm_padding', 'encryptionAlgorithm_padding', base.HEX)
HiUser_BearerSetupReq_t_securityParams.keyRefreshMargin = ProtoField.uint32('HiUser_BearerSetupReq_t_securityParams.keyRefreshMargin', 'keyRefreshMargin', base.HEX)
local HIUSER_BEARERSETUPREQ_T_PDCPPARAMS = Proto('HiUser_BearerSetupReq_t_pdcpParams', 'HIUSER_BEARERSETUPREQ_T_PDCPPARAMS')
local HiUser_BearerSetupReq_t_pdcpParams = HIUSER_BEARERSETUPREQ_T_PDCPPARAMS.fields
HiUser_BearerSetupReq_t_pdcpParams.rbIdentity = ProtoField.uint8('HiUser_BearerSetupReq_t_pdcpParams.rbIdentity', 'rbIdentity', base.HEX)
HiUser_BearerSetupReq_t_pdcpParams.rlcMode = ProtoField.bytes('HiUser_BearerSetupReq_t_pdcpParams.rlcMode', 'rlcMode', base.HEX)
HiUser_BearerSetupReq_t_pdcpParams.discardTimer = ProtoField.bytes('HiUser_BearerSetupReq_t_pdcpParams.discardTimer', 'discardTimer', base.HEX)
HiUser_BearerSetupReq_t_pdcpParams.statusReportRequest = ProtoField.int8('HiUser_BearerSetupReq_t_pdcpParams.statusReportRequest', 'statusReportRequest', base.DEC)
HiUser_BearerSetupReq_t_pdcpParams.localIpAddress = ProtoField.uint32('HiUser_BearerSetupReq_t_pdcpParams.localIpAddress', 'localIpAddress', base.HEX)
HiUser_BearerSetupReq_t_pdcpParams.remoteIpAddress = ProtoField.uint32('HiUser_BearerSetupReq_t_pdcpParams.remoteIpAddress', 'remoteIpAddress', base.HEX)
local HIUSER_BEARERSETUPREQ_T_GTPPARAMS = Proto('HiUser_BearerSetupReq_t_gtpParams', 'HIUSER_BEARERSETUPREQ_T_GTPPARAMS')
local HiUser_BearerSetupReq_t_gtpParams = HIUSER_BEARERSETUPREQ_T_GTPPARAMS.fields
HiUser_BearerSetupReq_t_gtpParams.nbBhTeid = ProtoField.uint32('HiUser_BearerSetupReq_t_gtpParams.nbBhTeid', 'nbBhTeid', base.HEX)
HiUser_BearerSetupReq_t_gtpParams.sGWTeid = ProtoField.uint32('HiUser_BearerSetupReq_t_gtpParams.sGWTeid', 'sGWTeid', base.HEX)
local HIUSER_BEARERSETUPREQ_T_RLCPARAMS = Proto('HiUser_BearerSetupReq_t_rlcParams', 'HIUSER_BEARERSETUPREQ_T_RLCPARAMS')
local HiUser_BearerSetupReq_t_rlcParams = HIUSER_BEARERSETUPREQ_T_RLCPARAMS.fields
HiUser_BearerSetupReq_t_rlcParams.rlcMode = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams.rlcMode', 'rlcMode', base.HEX)
HiUser_BearerSetupReq_t_rlcParams.rlcMode_padding = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams.rlcMode_padding', 'rlcMode_padding', base.HEX)
local HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCAMPARAMS = Proto('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams', 'HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCAMPARAMS')
local HiUser_BearerSetupReq_t_rlcParams_rlcAmParams = HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCAMPARAMS.fields
HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.pollPduCount = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.pollPduCount', 'pollPduCount', base.HEX)
HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.pollByte = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.pollByte', 'pollByte', base.HEX)
HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerPollRetransmit = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerPollRetransmit', 'timerPollRetransmit', base.HEX)
HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerReordering = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerReordering', 'timerReordering', base.HEX)
HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerStatusProhibit = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerStatusProhibit', 'timerStatusProhibit', base.HEX)
HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.maxRlcRetransmissions = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.maxRlcRetransmissions', 'maxRlcRetransmissions', base.HEX)
HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.maxRlcRetransmissions_padding = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.maxRlcRetransmissions_padding', 'maxRlcRetransmissions_padding', base.HEX)
local HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCUMPARAMS = Proto('HiUser_BearerSetupReq_t_rlcParams_rlcUmParams', 'HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCUMPARAMS')
local HiUser_BearerSetupReq_t_rlcParams_rlcUmParams = HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCUMPARAMS.fields
HiUser_BearerSetupReq_t_rlcParams_rlcUmParams.umTimerReordering = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcUmParams.umTimerReordering', 'umTimerReordering', base.HEX)
HiUser_BearerSetupReq_t_rlcParams_rlcUmParams.umTimerReordering_padding = ProtoField.bytes('HiUser_BearerSetupReq_t_rlcParams_rlcUmParams.umTimerReordering_padding', 'umTimerReordering_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERSETUPREQ_T, buffer())
  subtree:set_text('HiUser_BearerSetupReq_t')
  subtree:add_le (HiUser_BearerSetupReq_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSetupReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerSetupReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerSetupReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSetupReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSetupReq_t.hiSgnlBearerClientAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiUser_BearerSetupReq_t.hiUserBearerClientAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiUser_BearerSetupReq_t.loDataUeId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSetupReq_t.loDataUeId_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSetupReq_t.loDataDlRlcPduReceiver, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiUser_BearerSetupReq_t.dscp, buffer(offset, 4))
  offset = offset + 4
  local HiUser_BearerSetupReq_t_securityParamsTree = subtree:add (HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS, buffer(offset))
  HiUser_BearerSetupReq_t_securityParamsTree:set_text('HiUser_BearerSetupReq_t_securityParams')
  local HiUser_BearerSetupReq_t_securityParams_integrityKeyTree = HiUser_BearerSetupReq_t_securityParamsTree:add (HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY, buffer(offset))
  HiUser_BearerSetupReq_t_securityParams_integrityKeyTree:set_text('HiUser_BearerSetupReq_t_securityParams_integrityKey')
  local HiUser_BearerSetupReq_t_securityParams_integrityKey_keyTree = HiUser_BearerSetupReq_t_securityParams_integrityKeyTree:add (HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_INTEGRITYKEY_KEY, buffer(offset))
  HiUser_BearerSetupReq_t_securityParams_integrityKey_keyTree:set_text('HiUser_BearerSetupReq_t_securityParams_integrityKey_key')
  HiUser_BearerSetupReq_t_securityParams_integrityKey_keyTree:add_le (HiUser_BearerSetupReq_t_securityParams_integrityKey_key.key_length, buffer(offset, 4))
  offset = offset + 4
  HiUser_BearerSetupReq_t_securityParams_integrityKey_keyTree:add_le (HiUser_BearerSetupReq_t_securityParams_integrityKey_key.key_values, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  HiUser_BearerSetupReq_t_securityParamsTree:add_le (HiUser_BearerSetupReq_t_securityParams.integrityAlgorithm, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_securityParamsTree:add_le (HiUser_BearerSetupReq_t_securityParams.integrityAlgorithm_padding, buffer(offset, 3))
  offset = offset + 3
  local HiUser_BearerSetupReq_t_securityParams_encryptionKeyTree = HiUser_BearerSetupReq_t_securityParamsTree:add (HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY, buffer(offset))
  HiUser_BearerSetupReq_t_securityParams_encryptionKeyTree:set_text('HiUser_BearerSetupReq_t_securityParams_encryptionKey')
  local HiUser_BearerSetupReq_t_securityParams_encryptionKey_keyTree = HiUser_BearerSetupReq_t_securityParams_encryptionKeyTree:add (HIUSER_BEARERSETUPREQ_T_SECURITYPARAMS_ENCRYPTIONKEY_KEY, buffer(offset))
  HiUser_BearerSetupReq_t_securityParams_encryptionKey_keyTree:set_text('HiUser_BearerSetupReq_t_securityParams_encryptionKey_key')
  HiUser_BearerSetupReq_t_securityParams_encryptionKey_keyTree:add_le (HiUser_BearerSetupReq_t_securityParams_encryptionKey_key.key_length, buffer(offset, 4))
  offset = offset + 4
  HiUser_BearerSetupReq_t_securityParams_encryptionKey_keyTree:add_le (HiUser_BearerSetupReq_t_securityParams_encryptionKey_key.key_values, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  HiUser_BearerSetupReq_t_securityParamsTree:add_le (HiUser_BearerSetupReq_t_securityParams.encryptionAlgorithm, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_securityParamsTree:add_le (HiUser_BearerSetupReq_t_securityParams.encryptionAlgorithm_padding, buffer(offset, 3))
  offset = offset + 3
  HiUser_BearerSetupReq_t_securityParamsTree:add_le (HiUser_BearerSetupReq_t_securityParams.keyRefreshMargin, buffer(offset, 4))
  offset = offset + 4
  local HiUser_BearerSetupReq_t_pdcpParamsTree = subtree:add (HIUSER_BEARERSETUPREQ_T_PDCPPARAMS, buffer(offset))
  HiUser_BearerSetupReq_t_pdcpParamsTree:set_text('HiUser_BearerSetupReq_t_pdcpParams')
  HiUser_BearerSetupReq_t_pdcpParamsTree:add_le (HiUser_BearerSetupReq_t_pdcpParams.rbIdentity, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_pdcpParamsTree:add_le (HiUser_BearerSetupReq_t_pdcpParams.rlcMode, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_pdcpParamsTree:add_le (HiUser_BearerSetupReq_t_pdcpParams.discardTimer, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_pdcpParamsTree:add_le (HiUser_BearerSetupReq_t_pdcpParams.statusReportRequest, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_pdcpParamsTree:add_le (HiUser_BearerSetupReq_t_pdcpParams.localIpAddress, buffer(offset, 4))
  offset = offset + 4
  HiUser_BearerSetupReq_t_pdcpParamsTree:add_le (HiUser_BearerSetupReq_t_pdcpParams.remoteIpAddress, buffer(offset, 4))
  offset = offset + 4
  local HiUser_BearerSetupReq_t_gtpParamsTree = subtree:add (HIUSER_BEARERSETUPREQ_T_GTPPARAMS, buffer(offset))
  HiUser_BearerSetupReq_t_gtpParamsTree:set_text('HiUser_BearerSetupReq_t_gtpParams')
  HiUser_BearerSetupReq_t_gtpParamsTree:add_le (HiUser_BearerSetupReq_t_gtpParams.nbBhTeid, buffer(offset, 4))
  offset = offset + 4
  HiUser_BearerSetupReq_t_gtpParamsTree:add_le (HiUser_BearerSetupReq_t_gtpParams.sGWTeid, buffer(offset, 4))
  offset = offset + 4
  local HiUser_BearerSetupReq_t_rlcParamsTree = subtree:add (HIUSER_BEARERSETUPREQ_T_RLCPARAMS, buffer(offset))
  HiUser_BearerSetupReq_t_rlcParamsTree:set_text('HiUser_BearerSetupReq_t_rlcParams')
  HiUser_BearerSetupReq_t_rlcParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams.rlcMode, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams.rlcMode_padding, buffer(offset, 3))
  offset = offset + 3
  local HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree = HiUser_BearerSetupReq_t_rlcParamsTree:add (HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCAMPARAMS, buffer(offset))
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:set_text('HiUser_BearerSetupReq_t_rlcParams_rlcAmParams')
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.pollPduCount, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.pollByte, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerPollRetransmit, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerReordering, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.timerStatusProhibit, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.maxRlcRetransmissions, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParams_rlcAmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcAmParams.maxRlcRetransmissions_padding, buffer(offset, 2))
  offset = offset + 2
  local HiUser_BearerSetupReq_t_rlcParams_rlcUmParamsTree = HiUser_BearerSetupReq_t_rlcParamsTree:add (HIUSER_BEARERSETUPREQ_T_RLCPARAMS_RLCUMPARAMS, buffer(offset))
  HiUser_BearerSetupReq_t_rlcParams_rlcUmParamsTree:set_text('HiUser_BearerSetupReq_t_rlcParams_rlcUmParams')
  HiUser_BearerSetupReq_t_rlcParams_rlcUmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcUmParams.umTimerReordering, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupReq_t_rlcParams_rlcUmParamsTree:add_le (HiUser_BearerSetupReq_t_rlcParams_rlcUmParams.umTimerReordering_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
