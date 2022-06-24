-module(cryptoapis_list_transactions_by_block_hash_ribsz_v_join_split_inner).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_hash_ribsz_v_join_split_inner/0]).

-type cryptoapis_list_transactions_by_block_hash_ribsz_v_join_split_inner() ::
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
