-- =========================================
-- CAMPUS X MART - SAMPLE DATA
-- =========================================


-- 1. USERS
INSERT INTO users (name, email, password, phone, profile_image)
VALUES
('Rahim Ahmed', 'rahim@gmail.com', 'pass123', '01711111111', 'rahim.jpg'),
('Karim Hasan', 'karim@gmail.com', 'pass456', '01822222222', 'karim.jpg'),
('Sakib Khan', 'sakib@gmail.com', 'pass789', '01933333333', 'sakib.jpg'),
('Nusrat Jahan', 'nusrat@gmail.com', 'pass321', '01644444444', 'nusrat.jpg'),
('Tanvir Hossain', 'tanvir@gmail.com', 'pass654', '01555555555', 'tanvir.jpg');


-- 2. LOCATIONS
INSERT INTO locations (location_name, campus_name, latitude, longitude)
VALUES
('Dhanmondi', 'Campus A', 23.7465, 90.3760),
('Uttara', 'Campus B', 23.8759, 90.3795),
('Mirpur', 'Campus C', 23.8223, 90.3654),
('Mohammadpur', 'Campus A', 23.7660, 90.3580);


-- 3. ITEMS
INSERT INTO items
(seller_id, location_id, name, description, price, item_type, item_condition, image, status)
VALUES
(1, 1, 'HP Pavilion 15',
 'Good condition laptop',
 55000, 'Electronics', 'Used', 'hp.jpg', 'AVAILABLE'),

(2, 2, 'Scientific Calculator',
 'Casio calculator for university students',
 1200, 'Study Material', 'Used', 'calculator.jpg', 'AVAILABLE'),

(3, 3, 'Programming Book',
 'C++ programming book',
 800, 'Book', 'Good', 'cppbook.jpg', 'AVAILABLE'),

(4, 4, 'Office Chair',
 'Comfortable study chair',
 3500, 'Furniture', 'Used', 'chair.jpg', 'SOLD'),

(5, 1, 'USB Keyboard',
 'Mechanical keyboard',
 2500, 'Electronics', 'New', 'keyboard.jpg', 'AVAILABLE');


-- 4. POSTS
INSERT INTO posts (user_id, item_id, caption)
VALUES
(1, 1, 'I want to sell my HP Pavilion laptop.'),
(2, 2, 'Scientific calculator available for sale.'),
(3, 3, 'Selling my C++ programming book.'),
(4, 4, 'Study chair available at a good price.'),
(5, 5, 'Brand new mechanical keyboard for sale.');


-- 5. LIKES
INSERT INTO likes (post_id, user_id)
VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 4),
(3, 5),
(4, 1),
(5, 2),
(5, 3);


-- 6. COMMENTS
INSERT INTO comments (post_id, user_id, comment_text)
VALUES
(1, 2, 'Is the laptop still available?'),
(1, 3, 'Can you reduce the price?'),
(2, 1, 'Is this calculator suitable for engineering students?'),
(3, 4, 'Is the book in good condition?'),
(4, 5, 'Where can I collect the chair?'),
(5, 1, 'Is there a warranty with the keyboard?');


-- 7. REVIEWS / RATINGS
INSERT INTO reviews
(item_id, user_id, rating, review_text)
VALUES
(1, 2, 5, 'The laptop was in very good condition.'),
(1, 3, 4, 'Good laptop but battery could be better.'),
(2, 1, 5, 'Calculator works perfectly.'),
(3, 4, 4, 'Book condition is good.'),
(5, 2, 5, 'Excellent keyboard.');


-- 8. ORDERS
INSERT INTO orders
(item_id, buyer_id, seller_id, price, status)
VALUES
(4, 1, 4, 3500, 'COMPLETED'),
(2, 3, 2, 1200, 'PENDING'),
(3, 4, 3, 800, 'CONFIRMED'),
(5, 1, 5, 2500, 'COMPLETED');


-- 9. MESSAGES
INSERT INTO messages
(sender_id, receiver_id, message_text, is_read)
VALUES
(2, 1, 'Is the HP laptop still available?', TRUE),
(1, 2, 'Yes, it is still available.', TRUE),
(3, 2, 'I want to buy the calculator.', FALSE),
(2, 3, 'Sure, when would you like to collect it?', FALSE),
(4, 3, 'Is the C++ book available?', TRUE),
(3, 4, 'Yes, it is available.', TRUE);


-- 10. NOTIFICATIONS
INSERT INTO notifications
(user_id, title, message, is_read)
VALUES
(1, 'New Like', 'Karim liked your post.', FALSE),
(1, 'New Comment', 'Sakib commented on your post.', FALSE),
(2, 'New Message', 'You received a new message.', TRUE),
(3, 'New Order', 'Someone ordered your item.', FALSE),
(4, 'New Review', 'Someone reviewed your item.', TRUE),
(5, 'Item Sold', 'Your item has been sold.', FALSE);