-module(cryptoapis_get_transaction_details_by_transaction_idribsd_vin).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsd_vin/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsd_vin() ::
    #{ 'addresses' := list(),
       'coinbase' => binary(),
       'scriptSig' := cryptoapis_get_transaction_details_by_transaction_idribsd_script_sig:cryptoapis_get_transaction_details_by_transaction_idribsd_script_sig(),
       'sequence' := binary(),
       'txid' => binary(),
       'txinwitness' := list(),
       'value' := binary(),
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