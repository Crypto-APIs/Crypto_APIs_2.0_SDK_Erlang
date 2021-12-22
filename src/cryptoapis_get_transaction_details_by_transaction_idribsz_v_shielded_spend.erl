-module(cryptoapis_get_transaction_details_by_transaction_idribsz_v_shielded_spend).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsz_v_shielded_spend/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsz_v_shielded_spend() ::
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
