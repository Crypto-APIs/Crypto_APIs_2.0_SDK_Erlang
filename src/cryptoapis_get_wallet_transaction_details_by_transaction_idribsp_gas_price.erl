-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribsp_gas_price).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribsp_gas_price/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribsp_gas_price() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
