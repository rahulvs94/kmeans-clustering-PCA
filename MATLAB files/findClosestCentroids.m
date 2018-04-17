function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
temp = zeros(K,2);
% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

m = size(X,1);

for i = 1:m
    for j = 1:K
        temp(j,:) = [j sqrt(sum((X(i,:)-centroids(j,:)).^2,2))];
    end
    q = temp(temp(:,2)==min(temp(:,2)),1);
    idx(i) = q(1);          % when multiple values are minimum 
end
% first column >> cluster number
% second column >> distance between all centroid and considered example
% =============================================================

end

