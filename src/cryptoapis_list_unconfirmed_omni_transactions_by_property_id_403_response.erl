-module(cryptoapis_list_unconfirmed_omni_transactions_by_property_id_403_response).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_omni_transactions_by_property_id_403_response/0]).

-type cryptoapis_list_unconfirmed_omni_transactions_by_property_id_403_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_unconfirmed_omni_transactions_by_property_ide403:cryptoapis_list_unconfirmed_omni_transactions_by_property_ide403()
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
