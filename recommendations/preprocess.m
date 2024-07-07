function reduced_mat = preprocess(mat, min_reviews)
    reviews_per_user = sum(mat ~= 0, 2);
    valid_rows = reviews_per_user >= min_reviews;
    reduced_mat = mat(valid_rows, :);
end
