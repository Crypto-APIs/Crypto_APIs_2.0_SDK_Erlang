-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribsd_vin_inner).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribsd_vin_inner/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribsd_vin_inner() ::
    #{ 'addresses' := list(),
       'coinbase' => binary(),
       'scriptSig' := cryptoapis_get_wallet_transaction_details_by_transaction_idribsd_vin_inner_script_sig:cryptoapis_get_wallet_transaction_details_by_transaction_idribsd_vin_inner_script_sig(),
       'sequence' := integer(),
       'txid' => binary(),
       'txinwitness' => list(),
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
