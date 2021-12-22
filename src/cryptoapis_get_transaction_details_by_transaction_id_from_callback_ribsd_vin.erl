-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsd_vin).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsd_vin/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsd_vin() ::
    #{ 'addresses' := list(),
       'coinbase' => binary(),
       'scriptSig' := cryptoapis_get_transaction_details_by_transaction_idribsd2_script_sig:cryptoapis_get_transaction_details_by_transaction_idribsd2_script_sig(),
       'sequence' := integer(),
       'txid' => binary(),
       'txinwitness' := list(),
       'value' => binary(),
       'vout' => integer()
     }.

encode(#{ 'addresses' := Addresses,
          'coinbase' := Coinbase,
          'scriptSig' := ScriptSig,
          'sequence' := Sequence,
          'txid' := Txid,
          'txinwitness' := Txinwitness,
          'value' := Value,
          'vout' := Vout
        }) ->
    #{ 'addresses' => Addresses,
       'coinbase' => Coinbase,
       'scriptSig' => ScriptSig,
       'sequence' => Sequence,
       'txid' => Txid,
       'txinwitness' => Txinwitness,
       'value' => Value,
       'vout' => Vout
     }.
