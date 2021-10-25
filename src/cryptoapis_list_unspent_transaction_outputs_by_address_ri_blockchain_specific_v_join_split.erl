-module(cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific_v_join_split).

-export([encode/1]).

-export_type([cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific_v_join_split/0]).

-type cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific_v_join_split() ::
    #{ 'anchor' := binary(),
       'cipherTexts' := list(),
       'commitments' := list(),
       'macs' := list(),
       'nullifiers' := list(),
       'oneTimePubKey' := binary(),
       'proof' := binary(),
       'randomSeed' := binary(),
       'vPubNew' := binary(),
       'vPubOld' := binary()
     }.

encode(#{ 'anchor' := Anchor,
          'cipherTexts' := CipherTexts,
          'commitments' := Commitments,
          'macs' := Macs,
          'nullifiers' := Nullifiers,
          'oneTimePubKey' := OneTimePubKey,
          'proof' := Proof,
          'randomSeed' := RandomSeed,
          'vPubNew' := VPubNew,
          'vPubOld' := VPubOld
        }) ->
    #{ 'anchor' => Anchor,
       'cipherTexts' => CipherTexts,
       'commitments' => Commitments,
       'macs' => Macs,
       'nullifiers' => Nullifiers,
       'oneTimePubKey' => OneTimePubKey,
       'proof' => Proof,
       'randomSeed' => RandomSeed,
       'vPubNew' => VPubNew,
       'vPubOld' => VPubOld
     }.
