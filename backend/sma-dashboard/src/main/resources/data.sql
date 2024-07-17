create table if not exists analytics (
        id bigint generated by default as identity,
        comments_count integer not null,
        engaged_count integer not null,
        follows_count integer not null,
        posts_count integer not null,
        reached_count integer not null,
        save_count integer not null,
        shares_count integer not null,
        stories_count integer not null,
        social_account_id bigint,
        primary key (id)
    );

 create table if not exists social_media_account (
        id bigint generated by default as identity,
        followers_count integer not null,
        following_count integer not null,
        platform varchar(255),
        posts_count integer not null,
        user_id bigint,
        primary key (id)
    );

create table if not exists tb_users (
        id bigint generated by default as identity,
        bio varchar(255),
        category varchar(255),
        contact_options varchar(255),
        links varchar(255),
        name varchar(255),
        primary key (id)
    );

--insert dummy data
INSERT INTO tb_users (id, name, category, bio, contact_options, links)
VALUES (1, 'John Doe', 'Influencer', 'Bio of John Doe', 'email@example.com', 'https://example.com');
INSERT INTO tb_users (id, name, category, bio, contact_options, links)
VALUES (2, 'Ryan', 'Actor', 'Bio of John Doe', 'email@example.com', 'https://example.com');

INSERT INTO social_media_account (id, user_id, platform, followers_count, following_count, posts_count)
VALUES (1, 1, 'Twitter', 1000, 150, 200);
INSERT INTO social_media_account (id, user_id, platform, followers_count, following_count, posts_count)
VALUES (2, 2, 'Instagram', 10000, 10, 186);
INSERT INTO social_media_account (id, user_id, platform, followers_count, following_count, posts_count)
VALUES (3, 2, 'Facebook', 100000, 0, 100);

INSERT INTO analytics (id, social_account_id, reached_count, engaged_count, stories_count, follows_count, posts_count, save_count, comments_count, shares_count)
VALUES (1, 1, 500, 200, 50, 100, 200, 30, 50, 20);
INSERT INTO analytics (id, social_account_id, reached_count, engaged_count, stories_count, follows_count, posts_count, save_count, comments_count, shares_count)
VALUES (2, 2, 5000, 20000, 50, 1230, 200, 1123, 500, 20000);
INSERT INTO analytics (id, social_account_id, reached_count, engaged_count, stories_count, follows_count, posts_count, save_count, comments_count, shares_count)
VALUES (3, 3, 23456, 12345, 50, 1230, 200, 1123, 400, 343567);