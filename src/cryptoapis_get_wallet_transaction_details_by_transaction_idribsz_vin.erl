-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribsz_vin).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribsz_vin/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribsz_vin() ::
    #{ 'addresses' := list(),
       'scriptSig' := cryptoapis_get_transaction_details_by_transaction_idribsz_script_sig:cryptoapis_get_transaction_details_by_transaction_idribsz_script_sig(),
       'sequence' := integer(),
       'txid' := binary(),
       'txinwitness' => list(),
       'value' := binary(),
       'vout' := integer()
     }.

encode(#{ 'addresses' := Addresses,
          'scriptSig' := ScriptSig,
          'sequence' := Sequence,
          'txid' := Txid,
          'txinwitness' := Txinwitness,
          'value' := Value,
          'vout' := Vout
        }) ->
    #{ 'addresses' => Addresses,
       'scriptSig' => ScriptSig,
       'sequence' => Sequence,
       'txid' => Txid,
       'txinwitness' => Txinwitness,
       'value' => Value,
       'vout' => Vout
     }.
