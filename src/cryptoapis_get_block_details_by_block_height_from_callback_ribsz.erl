-module(cryptoapis_get_block_details_by_block_height_from_callback_ribsz).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_from_callback_ribsz/0]).

-type cryptoapis_get_block_details_by_block_height_from_callback_ribsz() ::
    #{ 'difficulty' := binary(),
       'dsBlock' := integer(),
       'dsDifficulty' := binary(),
       'dsLeader' := binary(),
       'gasLimit' := integer(),
       'gasUsed' := integer(),
       'microBlocks' := list()
     }.

encode(#{ 'difficulty' := Difficulty,
          'dsBlock' := DsBlock,
          'dsDifficulty' := DsDifficulty,
          'dsLeader' := DsLeader,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'microBlocks' := MicroBlocks
        }) ->
    #{ 'difficulty' => Difficulty,
       'dsBlock' => DsBlock,
       'dsDifficulty' => DsDifficulty,
       'dsLeader' => DsLeader,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'microBlocks' => MicroBlocks
     }.
