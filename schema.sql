CREATE TABLE public.data
(
    guild bigint NOT NULL,
    prefix text,
    category bigint,
    accessrole bigint[] NOT NULL,
    logging bigint,
    welcome text,
    goodbye text,
    loggingplus boolean NOT NULL,
    pingrole bigint[] NOT NULL,
    blacklist bigint[] NOT NULL,
    anonymous boolean NOT NULL,
    PRIMARY KEY (guild)
);

ALTER TABLE public.data
    OWNER to postgres;


CREATE TABLE public.snippet
(
    guild bigint NOT NULL,
    name text NOT NULL,
    content text NOT NULL
);

ALTER TABLE public.snippet
    OWNER to postgres;


CREATE TABLE public.premium
(
    identifier bigint NOT NULL,
    guild bigint[] NOT NULL,
    PRIMARY KEY (identifier)
);

ALTER TABLE public.premium
    OWNER to postgres;


CREATE TABLE public.ban
(
    identifier bigint NOT NULL,
    category integer NOT NULL,
    PRIMARY KEY (identifier)
);

ALTER TABLE public.ban
    OWNER to postgres;


CREATE TABLE public.preference
(
    identifier bigint NOT NULL,
    confirmation boolean NOT NULL,
    PRIMARY KEY (identifier)
);

ALTER TABLE public.preference
    OWNER to postgres;


CREATE TABLE public.stats
(
    commands integer NOT NULL,
    messages integer NOT NULL,
    tickets integer NOT NULL
);

ALTER TABLE public.stats
    OWNER to postgres;
