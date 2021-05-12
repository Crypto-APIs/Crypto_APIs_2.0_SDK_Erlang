-module(cryptoapis_get_xrp_ripple_address_details_response_item_balance).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_address_details_response_item_balance/0]).

-type cryptoapis_get_xrp_ripple_address_details_response_item_balance() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
