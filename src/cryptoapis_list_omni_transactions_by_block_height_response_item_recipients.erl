-module(cryptoapis_list_omni_transactions_by_block_height_response_item_recipients).

-export([encode/1]).

-export_type([cryptoapis_list_omni_transactions_by_block_height_response_item_recipients/0]).

-type cryptoapis_list_omni_transactions_by_block_height_response_item_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
