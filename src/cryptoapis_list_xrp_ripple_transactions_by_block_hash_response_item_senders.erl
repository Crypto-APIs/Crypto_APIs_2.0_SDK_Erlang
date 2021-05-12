-module(cryptoapis_list_xrp_ripple_transactions_by_block_hash_response_item_senders).

-export([encode/1]).

-export_type([cryptoapis_list_xrp_ripple_transactions_by_block_hash_response_item_senders/0]).

-type cryptoapis_list_xrp_ripple_transactions_by_block_hash_response_item_senders() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
