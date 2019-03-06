-- Stand Attacks
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Stand Light Punch", 3, 2, 7, 4, 2, 30, 70, "H", "su sp chain vt1 vt2", null, null),
("Stand Medium Punch", 5, 3, 10, 7, 1, 60, 100, "H", "su sp vt1 vt2", null, null),
("Stand Heavy Punch", 8, 3, 20, 3, -1, 90, 150, "H", "su sp(vt1/vt2) vt1 vt2", "Crush Counters (Ground: Airborne Spin, Airborne: Airborne Spin)", null),
("Stand Light Kick", 4, 3, 11, -1, -2, 30, 70, "H", "su sp vt1 vt2", null, "https://giphy.com/gifs/ryu-sfv-framedata-tsSjpo3RGxBFNDFVDB"),
("Stand Medium Kick", 8, 3, 16, 2, -2, 60, 100, "H", "vt1 vt2", null, null),
("Stand Heavy Kick", 10, 2, 20, 4, -1, 90, 150, "H", "vt1 vt2", "Crush Counters (Ground: Grounded Spin, Airborne: Airborne Spin). Crouchable", null);

 -- Crouch Attacks
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Crouch Light Punch", 4, 3, 5, 3, 2, 30, 70, "H", "su sp chain vt1 vt2", null, "https://giphy.com/gifs/ryu-sfv-framedata-AEscYroZub8WZr1sQK"),
("Crouch Medium Punch", 6, 3, 12, 4, 2, 60, 100, "H", "su sp vt1 vt2", null, "https://giphy.com/gifs/ryu-sfv-framedata-E1T7ZLY6JwPnj7uzPR"),
("Crouch Heavy Punch", 6, 4, 24, -7, -10, 90, 150, "H", "su sp vt1 vt2", "Forces Stand on Hit", "https://giphy.com/gifs/ryu-sfv-framedata-mWHhRG5CEGAcnmIznr"),
("Crouch Light Kick", 4, 2, 7, 2, 1, 20, 70, "L", "su sp chain vt1 vt2", null, null),
("Crouch Medium Kick", 7, 3, 13, 1, -3, 50, 100, "L", "su sp vt1 vt2",null, null),
("Crouch Heavy Kick", 8, 2, 22, "KD", -11, 90, 150, "L", "vt1 vt2", null, null);

-- Jump Attacks
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Jump Light Punch", 3, 6, null, null, null, 40, 70, "M", null, null, null),
("Jump Medium Punch", 7, 8, null, null, null, "30 + 30", "50 + 50", "M + M", null, null, null),
("Jump Heavy Punch", 7, 7, null, null, null, 90, 150, "M", null, null, null),
("Jump Light Kick", 4, 6, null, null, null, 40, 70, "M", null, null, null),
("Jump Medium Kick", 6, 4, null, null, null, 60, 100, "M", null, null, null),
("Jump Heavy Kick", 9, 5, null, null, null, 90, 150, "M", null, null, null);

-- Unique Moves
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values("Collarbone Breaker (F + MP)", 22, "1 & 3", 17, 1, -6, "30 + 30", "60 + 40", "M + M", null, null, null),
("Solar Plexus Strike (F + HP)", 17, "2 (1) & 2", 18, 8, -2, "40 + 40", "75 + 75", "H + H", "su", null, null),
("Axe Kick (B + HK)", 9, "3 (3) & 4", 16, 4, -2, "40 + 40", "60 + 90", "H + H", "vt1 vt2", "1st Hit Forces Stand on Hit", null),
("Jodan Sanrengeki 1st (s.MP -> s.HP)", "5 + 9", 2, 28, -9, -16, "60 + 63", "100 + 90","H + H", "vt1 vt2", null, null),
("Jodan Sanrengeki 2nd (s.MP -> s.HP -> s.HK)", "5 + 9 + 9", 2, 26, "KD", -7, "60 + 63 + 56", "100 + 90 + 80", "H + H + H", "vt1 vt2","Third Hit Crouchable on Block", null),
("Jodan Nirengeki (s.HP -> s.HK)", "8 + 9", 2, 26, "KD", -7, "90 + 63", "150 + 90", "H + H", "vt1 vt2", "Second Hit Crouchable on Block", null);

-- Throw
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Shoulder Throw (F + Throw)", 5, 3, 17, "KD", "KD", 130, 150, "T", null, null, null);

insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Somersault Throw (B + Throw)", 5, 3, 17, "KD", "KD", 150, 200, "T", null, null, null);

-- V Skill
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Mind's Eye (V Skill)", "3 (1)", 7, 32, null, null, null, null, null, null, "It's a parry. Cannot parry throws.", null);

-- V Reversal
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Hashogeki (V Reversal)", "17","2", "24", "KD", "-2", "(60)", "0", "H", null, "Hit Invincible. Throwable.", null);


-- Special Moves
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Light Shoryuken", "3","12", "19 + 11", "KD", "-24", "100(60)", "150(100)", "H", "su", "Throw Invincible frames 1-3. Airborne frames 3-33.", null),
("Medium Shoryuken", "4","11", "26 + 13", "KD", "-32", "120(60)", "150(100)", "H", "su", "Airborne Invincible frames 1-6. Airborne frames 6-40.", null),
("Heavy Shoryuken", "5","10", "29 + 15", "KD", "-36", "130(60)", "150(100)", "H", "su", "Strike and Projectile Invincible frames 3-6. Airborne frames 7-43.", null),
("EX Shoryuken", "3","12", "29 + 15", "KD", "-37", "80 + 80", "200", "H + H", null, "Full invincibility frames 1-15. Airborne frames 5-43.", null),
("Light Hadouken", "14", null, "33", "-1", "-6", "60", "100", "H", "su", "Projectile.", null),
("Medium Hadouken", "14", null, "33", "-1", "-6", "60", "100", "H", "su","Projectile.", null),
("Heavy Hadouken", "14", null, "33", "-1", "-6", "60", "100", "H", "su","Projectile.", null),
("EX Hadouken", "11", null, "31", "KD", "2", "40 + 60", "0 + 150", "H + H", "vt1 vt2","Projectile.", null),
("Light Tatsumaki Senpukyaku", "10", "2", "18 + 12", "KD", "-10", "90", "150", "H", null, "Airborne frames 6-29 (Crouchable).", null),
("Medium Tatsumaki Senpukyaku", "12", "2 (16) 2 ", "14 + 16", "KD", "-10", "100", "150", "H", null, "Airborne frames 7-47 (Crouchable). Lower-body Projectile Invincible frames 6-45.", null),
("Hard Tatsumaki Senpukyaku", "14", "2 (16) 2 (14) 2", "14 + 17", "KD", "-10", "110", "150", "H", null, "Airborne frames 7-63 (Crouchable). Lower-body Projectile Invincible frames 9-61.", null),
("EX Tatsumaki Senpukyaku", "10", "2 (4) 2 (5) 2 (3) 3 (3) 2", "11+15", "KD", "-19", "28 * 5", "150", "H", null, "Airborne frames 5-46 (Crouchable). Lower-body Projectile Invincible frames 7-36.", null),
("Light Joudan Sokutou Geri", "16", null, "31", "KD", "2", "40 + 60", "0 + 150", "H + H", "vt1 vt2", null, null),
("Medium Joudan Sokutou Geri", "18", null, "31", "KD", "2", "40 + 60", "0 + 150", "H + H", "vt1 vt2", null, null),
("Heavy Joudan Sokutou Geri", "20", null, "31", "KD", "2", "40 + 60", "0 + 150", "H + H", "vt1 vt2", null, null),
("EX Joudan Sokutou Geri", "18", null, "31", "KD", "2", "40 + 60", "0 + 150", "H + H", "vt1 vt2", "Wall Bounces on Hit. Opponent cannot back-recovery on Hit", null);

-- Super
insert into ryu (move, startup, active, recovery, onHit, onBlock, damage, stun, attackType, cancels, notes, gif)
values ("Shinkuu Hadouken", "4", null, "61", "KD", "-17", "320", "0", "H", null, "Full Invincibility frames 1-3.", null);