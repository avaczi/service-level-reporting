"""empty message

Revision ID: c8383b83857d
Revises: 164f7bb479d5
Create Date: 2017-08-24 12:33:32.901718

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'c8383b83857d'
down_revision = '164f7bb479d5'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('product', sa.Column('email', sa.String(length=120), nullable=True))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('product', 'email')
    # ### end Alembic commands ###