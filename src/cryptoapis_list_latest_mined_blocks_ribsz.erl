-module(cryptoapis_list_latest_mined_blocks_ribsz).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsz/0]).

-type cryptoapis_list_latest_mined_blocks_ribsz() ::
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
