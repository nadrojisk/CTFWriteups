.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x3

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 12
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 153
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    .line 154
    .local v4, "leftNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    .line 155
    .local v7, "topNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    .line 156
    .local v6, "rightNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 158
    .local v0, "bottomNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    and-int/lit8 v9, p0, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    const/4 v5, 0x1

    .line 162
    .local v5, "optimiseDimensions":Z
    :goto_0
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    .line 163
    invoke-static {p1, v9}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 165
    .local v2, "isOptimizableHorizontalMatch":Z
    :goto_1
    iget v9, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    iget v9, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 167
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v10, :cond_0

    if-eqz v2, :cond_d

    .line 168
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_d

    .line 169
    :cond_0
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_7

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_7

    .line 170
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 171
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    if-eqz v5, :cond_6

    .line 173
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 258
    :cond_1
    :goto_2
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_16

    const/4 v9, 0x1

    .line 259
    invoke-static {p1, v9}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v3, 0x1

    .line 261
    .local v3, "isOptimizableVerticalMatch":Z
    :goto_3
    iget v9, v7, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    iget v9, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    .line 264
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v10, :cond_2

    if-eqz v3, :cond_1e

    .line 265
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1e

    .line 266
    :cond_2
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_18

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_18

    .line 267
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 268
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    if-eqz v5, :cond_17

    .line 270
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 274
    :goto_4
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    .line 275
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 276
    const/4 v9, 0x1

    iget-object v10, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 277
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v11, v11

    .line 276
    invoke-virtual {v7, v9, v10, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 366
    :cond_3
    :goto_5
    return-void

    .line 158
    .end local v2    # "isOptimizableHorizontalMatch":Z
    .end local v3    # "isOptimizableVerticalMatch":Z
    .end local v5    # "optimiseDimensions":Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 163
    .restart local v5    # "optimiseDimensions":Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 175
    .restart local v2    # "isOptimizableHorizontalMatch":Z
    :cond_6
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_2

    .line 177
    :cond_7
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_9

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_9

    .line 178
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 179
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    if-eqz v5, :cond_8

    .line 181
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 183
    :cond_8
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 185
    :cond_9
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_b

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_b

    .line 186
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 187
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 189
    if-eqz v5, :cond_a

    .line 190
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 192
    :cond_a
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 194
    :cond_b
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    .line 195
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 196
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    if-eqz v5, :cond_c

    .line 198
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 199
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 200
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 201
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 203
    :cond_c
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 204
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_2

    .line 207
    :cond_d
    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    .line 214
    .local v8, "width":I
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 215
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_f

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_f

    .line 217
    if-eqz v5, :cond_e

    .line 218
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 220
    :cond_e
    invoke-virtual {v6, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 222
    :cond_f
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_11

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_11

    .line 223
    if-eqz v5, :cond_10

    .line 224
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 226
    :cond_10
    invoke-virtual {v6, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 228
    :cond_11
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_13

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    .line 229
    if-eqz v5, :cond_12

    .line 230
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 232
    :cond_12
    neg-int v9, v8

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 234
    :cond_13
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    .line 235
    if-eqz v5, :cond_14

    .line 236
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 237
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 239
    :cond_14
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_15

    .line 240
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 241
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 243
    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_2

    .line 246
    :cond_15
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 247
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    neg-int v9, v8

    int-to-float v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 249
    int-to-float v9, v8

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 250
    invoke-virtual {p1, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_2

    .line 259
    .end local v8    # "width":I
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 272
    .restart local v3    # "isOptimizableVerticalMatch":Z
    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_4

    .line 279
    :cond_18
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1a

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_1a

    .line 280
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 281
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    if-eqz v5, :cond_19

    .line 283
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 287
    :goto_6
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 288
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 285
    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_6

    .line 290
    :cond_1a
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_1c

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1c

    .line 291
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 292
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    if-eqz v5, :cond_1b

    .line 294
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v7, v0, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 298
    :goto_7
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 299
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 296
    :cond_1b
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_7

    .line 301
    :cond_1c
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    .line 302
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 303
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    if-eqz v5, :cond_1d

    .line 305
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v7, v0, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 306
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 307
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 308
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 313
    :goto_8
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 314
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 310
    :cond_1d
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 311
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_8

    .line 317
    :cond_1e
    if-eqz v3, :cond_3

    .line 318
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 323
    .local v1, "height":I
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 324
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_20

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_20

    .line 326
    if-eqz v5, :cond_1f

    .line 327
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 329
    :cond_1f
    invoke-virtual {v0, v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 331
    :cond_20
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_22

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_22

    .line 332
    if-eqz v5, :cond_21

    .line 333
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 335
    :cond_21
    invoke-virtual {v0, v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 337
    :cond_22
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_24

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_24

    .line 338
    if-eqz v5, :cond_23

    .line 339
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v7, v0, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 341
    :cond_23
    neg-int v9, v1

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 343
    :cond_24
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    .line 344
    if-eqz v5, :cond_25

    .line 345
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 346
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 348
    :cond_25
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_26

    .line 349
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 350
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 352
    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_5

    .line 354
    :cond_26
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 355
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    neg-int v9, v1

    int-to-float v9, v9

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 357
    int-to-float v9, v1

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 358
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 359
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 360
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z
    .locals 40
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    .prologue
    .line 382
    move-object/from16 v0, p4

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 383
    .local v9, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v20, v0

    .line 384
    .local v20, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 385
    .local v13, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    .line 386
    .local v23, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 388
    .local v15, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v33, v9

    .line 389
    .local v33, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v24, 0x0

    .line 390
    .local v24, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    .line 392
    .local v7, "done":Z
    const/16 v26, 0x0

    .line 393
    .local v26, "numMatchConstraints":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    move/from16 v32, v0

    .line 394
    .local v32, "totalWeights":F
    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 395
    .local v10, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    .line 397
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v34, v0

    aget-object v34, v34, p2

    sget-object v35, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_2

    const/16 v19, 0x1

    .line 398
    .local v19, "isWrapContent":Z
    :goto_0
    const/16 v17, 0x0

    .line 399
    .local v17, "isChainSpread":Z
    const/16 v18, 0x0

    .line 400
    .local v18, "isChainSpreadInside":Z
    const/16 v16, 0x0

    .line 402
    .local v16, "isChainPacked":Z
    if-nez p2, :cond_6

    .line 403
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v34, v0

    if-nez v34, :cond_3

    const/16 v17, 0x1

    .line 404
    :goto_1
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    .line 405
    :goto_2
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    const/16 v16, 0x1

    .line 416
    :goto_3
    const/16 v31, 0x0

    .line 417
    .local v31, "totalSize":F
    const/16 v30, 0x0

    .line 418
    .local v30, "totalMargins":F
    const/16 v27, 0x0

    .line 420
    .local v27, "numVisibleWidgets":I
    :goto_4
    if-nez v7, :cond_15

    .line 422
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    .line 423
    add-int/lit8 v27, v27, 0x1

    .line 424
    if-nez p2, :cond_a

    .line 425
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v31, v31, v34

    .line 429
    :goto_5
    move-object/from16 v0, v33

    if-eq v0, v13, :cond_0

    .line 430
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v31, v31, v34

    .line 432
    :cond_0
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v30, v30, v34

    .line 433
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v30, v30, v34

    .line 436
    :cond_1
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v4, v34, p3

    .line 438
    .local v4, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v34, v0

    aget-object v34, v34, p2

    sget-object v35, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_10

    .line 440
    add-int/lit8 v26, v26, 0x1

    .line 442
    if-nez p2, :cond_d

    .line 443
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v34, v0

    if-eqz v34, :cond_b

    .line 444
    const/16 v34, 0x0

    .line 643
    .end local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_6
    return v34

    .line 397
    .end local v16    # "isChainPacked":Z
    .end local v17    # "isChainSpread":Z
    .end local v18    # "isChainSpreadInside":Z
    .end local v19    # "isWrapContent":Z
    .end local v27    # "numVisibleWidgets":I
    .end local v30    # "totalMargins":F
    .end local v31    # "totalSize":F
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 403
    .restart local v16    # "isChainPacked":Z
    .restart local v17    # "isChainSpread":Z
    .restart local v18    # "isChainSpreadInside":Z
    .restart local v19    # "isWrapContent":Z
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 404
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 405
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 407
    :cond_6
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v34, v0

    if-nez v34, :cond_7

    const/16 v17, 0x1

    .line 408
    :goto_7
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    .line 409
    :goto_8
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    :goto_9
    goto/16 :goto_3

    .line 407
    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    .line 408
    :cond_8
    const/16 v18, 0x0

    goto :goto_8

    .line 409
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 427
    .restart local v27    # "numVisibleWidgets":I
    .restart local v30    # "totalMargins":F
    .restart local v31    # "totalSize":F
    :cond_a
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v31, v31, v34

    goto/16 :goto_5

    .line 445
    .restart local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_b
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v34, v0

    if-nez v34, :cond_c

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v34, v0

    if-eqz v34, :cond_10

    .line 446
    :cond_c
    const/16 v34, 0x0

    goto :goto_6

    .line 449
    :cond_d
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v34, v0

    if-eqz v34, :cond_e

    .line 450
    const/16 v34, 0x0

    goto :goto_6

    .line 451
    :cond_e
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v34, v0

    if-nez v34, :cond_f

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v34, v0

    if-eqz v34, :cond_10

    .line 452
    :cond_f
    const/16 v34, 0x0

    goto :goto_6

    .line 458
    :cond_10
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    .line 459
    .local v25, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v25, :cond_13

    .line 460
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v24, v0

    .line 461
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    if-eqz v34, :cond_11

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_12

    .line 462
    :cond_11
    const/16 v24, 0x0

    .line 467
    :cond_12
    :goto_a
    if-eqz v24, :cond_14

    .line 468
    move-object/from16 v33, v24

    goto/16 :goto_4

    .line 465
    :cond_13
    const/16 v24, 0x0

    goto :goto_a

    .line 470
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 474
    .end local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v25    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_15
    iget-object v0, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    .line 475
    .local v11, "firstNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v21

    .line 477
    .local v21, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    if-eqz v34, :cond_16

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    if-nez v34, :cond_17

    .line 479
    :cond_16
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 483
    :cond_17
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    .line 486
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 489
    :cond_18
    if-lez v26, :cond_19

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_19

    .line 491
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 494
    :cond_19
    const/4 v8, 0x0

    .line 495
    .local v8, "extraMargin":F
    if-nez v16, :cond_1a

    if-nez v17, :cond_1a

    if-eqz v18, :cond_1c

    .line 496
    :cond_1a
    if-eqz v13, :cond_1b

    .line 497
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v8, v0

    .line 499
    :cond_1b
    if-eqz v23, :cond_1c

    .line 500
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v8, v8, v34

    .line 504
    :cond_1c
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v12, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 505
    .local v12, "firstOffset":F
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move/from16 v22, v0

    .line 506
    .local v22, "lastOffset":F
    const/4 v6, 0x0

    .line 507
    .local v6, "distance":F
    cmpg-float v34, v12, v22

    if-gez v34, :cond_1d

    .line 508
    sub-float v34, v22, v12

    sub-float v6, v34, v31

    .line 513
    :goto_b
    if-lez v26, :cond_26

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_26

    .line 514
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v34

    if-eqz v34, :cond_1e

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v34, v0

    aget-object v34, v34, p2

    sget-object v35, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_1e

    .line 515
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 510
    :cond_1d
    sub-float v34, v12, v22

    sub-float v6, v34, v31

    goto :goto_b

    .line 517
    :cond_1e
    add-float v6, v6, v31

    .line 518
    sub-float v6, v6, v30

    .line 519
    move-object/from16 v33, v13

    .line 520
    move/from16 v28, v12

    .line 521
    .local v28, "position":F
    if-eqz v17, :cond_1f

    .line 522
    sub-float v34, v30, v8

    sub-float v6, v6, v34

    .line 524
    :cond_1f
    if-eqz v17, :cond_20

    .line 525
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v28, v28, v34

    .line 526
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    aget-object v24, v34, p2

    .line 527
    if-eqz v24, :cond_20

    .line 528
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v28, v28, v34

    .line 531
    :cond_20
    :goto_c
    if-eqz v33, :cond_25

    .line 532
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v34, :cond_21

    .line 533
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 534
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 535
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 537
    :cond_21
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    aget-object v24, v34, p2

    .line 538
    if-nez v24, :cond_22

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_24

    .line 539
    :cond_22
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v5, v6, v34

    .line 540
    .local v5, "dimension":F
    const/16 v34, 0x0

    cmpl-float v34, v32, v34

    if-lez v34, :cond_23

    .line 541
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v34, v0

    aget v34, v34, p2

    mul-float v34, v34, v6

    div-float v5, v34, v32

    .line 543
    :cond_23
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v28, v28, v34

    .line 544
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 546
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    add-float v36, v28, v5

    invoke-virtual/range {v34 .. v36}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 548
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 549
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 550
    add-float v28, v28, v5

    .line 551
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v28, v28, v34

    .line 553
    .end local v5    # "dimension":F
    :cond_24
    move-object/from16 v33, v24

    goto/16 :goto_c

    .line 555
    :cond_25
    const/16 v34, 0x1

    goto/16 :goto_6

    .line 558
    .end local v28    # "position":F
    :cond_26
    cmpg-float v34, v6, v31

    if-gez v34, :cond_27

    .line 559
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 562
    :cond_27
    if-eqz v16, :cond_2c

    .line 563
    sub-float/2addr v6, v8

    .line 565
    move-object/from16 v33, v13

    .line 566
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v34

    mul-float v34, v34, v6

    add-float v6, v12, v34

    .line 567
    :goto_d
    if-eqz v33, :cond_38

    .line 568
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v34, :cond_28

    .line 569
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 570
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 571
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 573
    :cond_28
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    aget-object v24, v34, p2

    .line 574
    if-nez v24, :cond_29

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2a

    .line 575
    :cond_29
    const/4 v5, 0x0

    .line 576
    .restart local v5    # "dimension":F
    if-nez p2, :cond_2b

    .line 577
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    .line 581
    :goto_e
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v6, v34

    .line 582
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 584
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    add-float v36, v6, v5

    invoke-virtual/range {v34 .. v36}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 586
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 587
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 588
    add-float/2addr v6, v5

    .line 589
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v6, v34

    .line 591
    .end local v5    # "dimension":F
    :cond_2a
    move-object/from16 v33, v24

    goto/16 :goto_d

    .line 579
    .restart local v5    # "dimension":F
    :cond_2b
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    goto/16 :goto_e

    .line 593
    .end local v5    # "dimension":F
    :cond_2c
    if-nez v17, :cond_2d

    if-eqz v18, :cond_38

    .line 594
    :cond_2d
    if-eqz v17, :cond_35

    .line 595
    sub-float/2addr v6, v8

    .line 599
    :cond_2e
    :goto_f
    move-object/from16 v33, v13

    .line 600
    add-int/lit8 v34, v27, 0x1

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v14, v6, v34

    .line 601
    .local v14, "gap":F
    if-eqz v18, :cond_2f

    .line 602
    const/16 v34, 0x1

    move/from16 v0, v27

    move/from16 v1, v34

    if-le v0, v1, :cond_36

    .line 603
    add-int/lit8 v34, v27, -0x1

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v14, v6, v34

    .line 608
    :cond_2f
    :goto_10
    add-float v6, v12, v14

    .line 609
    if-eqz v18, :cond_30

    const/16 v34, 0x1

    move/from16 v0, v27

    move/from16 v1, v34

    if-le v0, v1, :cond_30

    .line 610
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v12, v34

    .line 612
    :cond_30
    if-eqz v17, :cond_31

    .line 613
    if-eqz v13, :cond_31

    .line 614
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v6, v34

    .line 617
    :cond_31
    :goto_11
    if-eqz v33, :cond_38

    .line 618
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v34, :cond_32

    .line 619
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 620
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 621
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 623
    :cond_32
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    aget-object v24, v34, p2

    .line 624
    if-nez v24, :cond_33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_34

    .line 625
    :cond_33
    const/4 v5, 0x0

    .line 626
    .restart local v5    # "dimension":F
    if-nez p2, :cond_37

    .line 627
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    .line 631
    :goto_12
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 633
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    add-float v36, v6, v5

    invoke-virtual/range {v34 .. v36}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 635
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 636
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 637
    add-float v34, v5, v14

    add-float v6, v6, v34

    .line 639
    .end local v5    # "dimension":F
    :cond_34
    move-object/from16 v33, v24

    goto/16 :goto_11

    .line 596
    .end local v14    # "gap":F
    :cond_35
    if-eqz v18, :cond_2e

    .line 597
    sub-float/2addr v6, v8

    goto/16 :goto_f

    .line 605
    .restart local v14    # "gap":F
    :cond_36
    const/high16 v34, 0x40000000    # 2.0f

    div-float v14, v6, v34

    goto/16 :goto_10

    .line 629
    .restart local v5    # "dimension":F
    :cond_37
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    goto :goto_12

    .line 643
    .end local v5    # "dimension":F
    .end local v14    # "gap":F
    :cond_38
    const/16 v34, 0x1

    goto/16 :goto_6
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 9
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v6

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_0

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v6

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_0

    .line 59
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 60
    .local v1, "left":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v2, v4, v5

    .line 67
    .local v2, "right":I
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v8, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 73
    invoke-virtual {p2, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 75
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_3

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_3

    .line 78
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 79
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v0, v4, v5

    .line 86
    .local v0, "bottom":I
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v4, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 91
    :cond_1
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_2
    iput v8, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 96
    invoke-virtual {p2, v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 98
    .end local v0    # "bottom":I
    .end local v3    # "top":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 4
    .param p0, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p1

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_2

    :goto_1
    aget-object v0, v2, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 121
    :cond_3
    if-nez p1, :cond_5

    .line 122
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_0

    .line 125
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    .line 136
    goto :goto_0

    .line 129
    :cond_5
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_0

    .line 132
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v2, :cond_4

    goto :goto_0
.end method
