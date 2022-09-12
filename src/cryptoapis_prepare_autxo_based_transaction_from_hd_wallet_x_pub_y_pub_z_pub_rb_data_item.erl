-module(cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item/0]).

-type cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item() ::
    #{ 'additionalData' => binary(),
       'fee' := cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee:cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee(),
       'locktime' => integer(),
       'prepareStrategy' => binary(),
       'recipients' := list(),
       'replaceable' => boolean(),
       'xpub' := binary()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'fee' := Fee,
          'locktime' := Locktime,
          'prepareStrategy' := PrepareStrategy,
          'recipients' := Recipients,
          'replaceable' := Replaceable,
          'xpub' := Xpub
        }) ->
    #{ 'additionalData' => AdditionalData,
       'fee' => Fee,
       'locktime' => Locktime,
       'prepareStrategy' => PrepareStrategy,
       'recipients' => Recipients,
       'replaceable' => Replaceable,
       'xpub' => Xpub
     }.
