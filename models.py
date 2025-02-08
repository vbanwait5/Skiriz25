from . import db #Import all from db, which is defined in the __init__.py file
from sqlalchemy.sql import func
from flask_sqlalchemy import SQLAlchemy

class Posts(db.Model):
    __tablename__ = 'posts'
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(200)) #title of poster
    tags = db.relationship('Post_Tags', backref="post_tags") #linked to table for tags
    description = db.Column(db.String(3000)) #description of poster
    approved = db.Column(db.Boolean, default=False, nullable=False) #title of poster

class Post_Tags(db.Model):
    __tablename__ = 'post_tags'
    id = db.Column(db.Integer, primary_key=True)
    post_id = db.Column(db.Integer, db.ForeignKey('posts.name')) 
    name = db.Column(db.String(200)) #name of tag
    sessionWorkoutID = db.Column(db.Integer, db.ForeignKey('sessionworkout.name'))

