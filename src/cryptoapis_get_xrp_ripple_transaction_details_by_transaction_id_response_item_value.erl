-module(cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_value).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_value/0]).

-type cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_value() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
