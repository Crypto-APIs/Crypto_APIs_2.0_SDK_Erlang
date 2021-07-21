-module(cryptoapis_blockchain_data_internal_transaction_not_found_error).

-export([encode/1]).

-export_type([cryptoapis_blockchain_data_internal_transaction_not_found_error/0]).

-type cryptoapis_blockchain_data_internal_transaction_not_found_error() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
