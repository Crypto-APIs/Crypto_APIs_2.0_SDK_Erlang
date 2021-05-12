-module(cryptoapis_list_xrp_ripple_transactions_by_block_hash_response_item_offer).

-export([encode/1]).

-export_type([cryptoapis_list_xrp_ripple_transactions_by_block_hash_response_item_offer/0]).

-type cryptoapis_list_xrp_ripple_transactions_by_block_hash_response_item_offer() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
