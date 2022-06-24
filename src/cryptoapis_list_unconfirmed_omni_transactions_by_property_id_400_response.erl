-module(cryptoapis_list_unconfirmed_omni_transactions_by_property_id_400_response).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_omni_transactions_by_property_id_400_response/0]).

-type cryptoapis_list_unconfirmed_omni_transactions_by_property_id_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_unconfirmed_omni_transactions_by_property_ide400:cryptoapis_list_unconfirmed_omni_transactions_by_property_ide400()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
