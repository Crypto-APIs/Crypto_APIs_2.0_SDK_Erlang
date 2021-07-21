-module(cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_offer).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_offer/0]).

-type cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idri_offer() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
