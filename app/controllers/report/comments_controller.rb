class Report::CommentsController < CommentsController
  def create
    create_common({ type: 'Report', id: params['report_id'].to_i })
  end
end
