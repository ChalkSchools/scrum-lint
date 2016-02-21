module ScrumLint
  # `ScrumLint::BoardValidator` checks over a board to make sure it has the
  # expected lists. The board should have at least one task list. It will also
  # warn if lists are found that are unaccounted for.
  class BoardValidator

    include Callable

    def call(board)
      raise 'no task lists found!' unless board.task_lists.any?
      extra_list_names = board.lists.map(&:name) - expected_list_names(board)
      warn "extra lists found: #{extra_list_names}" if extra_list_names.any?
    end

  private

    def expected_list_names(board)
      ScrumLint.config.project_list_names +
        ScrumLint.config.task_list_names +
        board.done_lists.map(&:name) +
        ScrumLint.config.ignored_list_names
    end

  end
end
