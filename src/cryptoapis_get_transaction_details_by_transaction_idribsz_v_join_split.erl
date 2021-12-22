-module(cryptoapis_get_transaction_details_by_transaction_idribsz_v_join_split).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsz_v_join_split/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsz_v_join_split() ::
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
