-module(cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific).

-export([encode/1]).

-export_type([cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific/0]).

-type cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific() ::
    #{ 'vSize' := integer(),
       'bindingSig' := binary(),
       'expiryHeight' := integer(),
       'joinSplitPubKey' := binary(),
       'joinSplitSig' := binary(),
       'overwintered' := boolean(),
       'vJoinSplit' => list(),
       'vShieldedOutput' => list(),
       'vShieldedSpend' := list(),
       'valueBalance' := binary(),
       'versionGroupId' := binary()
     }.

encode(#{ 'vSize' := VSize,
          'bindingSig' := BindingSig,
          'expiryHeight' := ExpiryHeight,
          'joinSplitPubKey' := JoinSplitPubKey,
          'joinSplitSig' := JoinSplitSig,
          'overwintered' := Overwintered,
          'vJoinSplit' := VJoinSplit,
          'vShieldedOutput' := VShieldedOutput,
          'vShieldedSpend' := VShieldedSpend,
          'valueBalance' := ValueBalance,
          'versionGroupId' := VersionGroupId
        }) ->
    #{ 'vSize' => VSize,
       'bindingSig' => BindingSig,
       'expiryHeight' => ExpiryHeight,
       'joinSplitPubKey' => JoinSplitPubKey,
       'joinSplitSig' => JoinSplitSig,
       'overwintered' => Overwintered,
       'vJoinSplit' => VJoinSplit,
       'vShieldedOutput' => VShieldedOutput,
       'vShieldedSpend' => VShieldedSpend,
       'valueBalance' => ValueBalance,
       'versionGroupId' => VersionGroupId
     }.
