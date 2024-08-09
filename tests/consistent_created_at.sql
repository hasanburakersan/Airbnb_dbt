select l.created_at,r.review_date from {{ ref("dim_listings_cleansed") }} l
left join {{ref("fct_reviews")}} r
on l.listing_id = r.listing_id
where l.created_at>r.review_date
limit 1