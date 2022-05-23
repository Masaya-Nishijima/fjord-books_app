class Book::CommentsController < CommentsController
  def create
    create_common({ type: 'Book', id: params['book_id'].to_i })
  end
end
