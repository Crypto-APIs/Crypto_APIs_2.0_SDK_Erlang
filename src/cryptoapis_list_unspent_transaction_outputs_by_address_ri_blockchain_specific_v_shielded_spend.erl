-module(cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific_v_shielded_spend).

-export([encode/1]).

-export_type([cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific_v_shielded_spend/0]).

-type cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific_v_shielded_spend() ::
    #{ 'anchor' := binary(),
       'cv' := binary(),
       'nullifier' := binary(),
       'proof' := binary(),
       'rk' := binary(),
       'spendAuthSig' := binary()
     }.

encode(#{ 'anchor' := Anchor,
          'cv' := Cv,
          'nullifier' := Nullifier,
          'proof' := Proof,
          'rk' := Rk,
          'spendAuthSig' := SpendAuthSig
        }) ->
    #{ 'anchor' => Anchor,
       'cv' => Cv,
       'nullifier' => Nullifier,
       'proof' => Proof,
       'rk' => Rk,
       'spendAuthSig' => SpendAuthSig
     }.
