.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v1

    const/16 v2, 0x140

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    .line 58
    .local v0, "allowStackingDefault":Z
    :cond_0
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 61
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .line 159
    move v0, p1

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    return v0

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isStacked()Z
    .locals 2

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .line 173
    nop

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 174
    nop

    if-eqz p1, :cond_0

    nop

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    nop

    const/16 v0, 0x50

    :goto_0
    nop

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 176
    nop

    sget v0, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "spacer":Landroid/view/View;
    nop

    if-eqz v0, :cond_2

    .line 178
    nop

    if-eqz p1, :cond_1

    nop

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    nop

    const/4 v1, 0x4

    :goto_1
    nop

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 177
    :cond_2
    nop

    .line 183
    :goto_2
    nop

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 184
    .local v1, "childCount":I
    nop

    add-int/lit8 v2, v1, -0x2

    .local v2, "i":I
    :goto_3
    nop

    if-ltz v2, :cond_3

    .line 185
    nop

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 184
    nop

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    nop

    .line 187
    .end local v2    # "i":I
    nop

    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 2

    .line 169
    iget v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 78
    .local v0, "widthSize":I
    iget-boolean v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 79
    iget v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    goto :goto_0

    .line 79
    :cond_0
    nop

    .line 84
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    goto :goto_1

    .line 78
    :cond_1
    nop

    .line 87
    :goto_1
    const/4 v1, 0x0

    .line 93
    .local v1, "needsRemeasure":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_2

    .line 94
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 97
    .local v3, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_2

    .line 93
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_2
    nop

    .line 99
    move v3, p1

    .line 102
    .restart local v3    # "initialWidthMeasureSpec":I
    :goto_2
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 104
    iget-boolean v4, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v4

    if-nez v4, :cond_8

    .line 107
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    const/4 v6, 0x1

    if-lt v4, v5, :cond_4

    .line 109
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v4

    .line 110
    .local v4, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    .line 111
    .local v5, "measuredWidthState":I
    const/high16 v7, 0x1000000

    if-ne v5, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    move v4, v7

    .line 112
    .end local v5    # "measuredWidthState":I
    .local v4, "stack":Z
    goto :goto_6

    .line 115
    .end local v4    # "stack":Z
    :cond_4
    const/4 v4, 0x0

    .line 116
    .local v4, "childWidthTotal":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v7

    .local v7, "count":I
    :goto_4
    if-ge v5, v7, :cond_5

    .line 117
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v4, v8

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 119
    .end local v5    # "i":I
    .end local v7    # "count":I
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v5, v7

    if-le v5, v0, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    move v4, v5

    .line 122
    .local v4, "stack":Z
    :goto_6
    if-eqz v4, :cond_7

    .line 123
    invoke-direct {p0, v6}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 125
    const/4 v1, 0x1

    goto :goto_7

    .line 122
    :cond_7
    goto :goto_7

    .line 104
    .end local v4    # "stack":Z
    :cond_8
    nop

    .line 129
    :goto_7
    if-eqz v1, :cond_9

    .line 130
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_8

    .line 129
    :cond_9
    nop

    .line 135
    :goto_8
    const/4 v4, 0x0

    .line 136
    .local v4, "minHeight":I
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v2

    .line 137
    .local v2, "firstVisible":I
    if-ltz v2, :cond_c

    .line 138
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 139
    .local v5, "firstButton":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    .local v6, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 142
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 143
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v7

    .line 144
    .local v7, "secondVisible":I
    if-ltz v7, :cond_a

    .line 145
    int-to-float v8, v4

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x41800000    # 16.0f

    .line 146
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v11, v10

    add-float/2addr v9, v11

    add-float/2addr v8, v9

    float-to-int v4, v8

    goto :goto_9

    .line 144
    :cond_a
    nop

    .line 148
    .end local v7    # "secondVisible":I
    :goto_9
    goto :goto_a

    .line 149
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_a

    .line 137
    .end local v5    # "firstButton":Landroid/view/View;
    .end local v6    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    nop

    .line 153
    :goto_a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    if-eq v5, v4, :cond_d

    .line 154
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    goto :goto_b

    .line 153
    :cond_d
    nop

    .line 156
    :goto_b
    return-void
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .line 65
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 66
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 67
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    goto :goto_0

    .line 67
    :cond_0
    nop

    .line 70
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    goto :goto_1

    .line 65
    :cond_1
    nop

    .line 72
    :goto_1
    return-void
.end method
