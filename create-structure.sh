# This is an automated way to create the structure that's explained at
# http://wiki.whiteoctober.co.uk/Front-end_Development#Sass_Structure

# Create the folders you need
mkdir -p scss/{base/mixins,components}

# Create the files you need
touch scss/base/{_mixins.scss,_palette.scss,_typography.scss,_variables.scss}

# Populate the files with import directives, basic code, comments, and links
# main.scss
content_main="// Set correct path to Bootstrap's Glyphicon fonts\n"
content_main+="//\$icon-font-path: \"../third-party/bootstrap/fonts/bootstrap/\";\n\n"

content_main+="// Import Bootstrap (uncompiled Sass so we can access its mixins and variables)\n"
content_main+="// IMPORTANT: Please open /www/third-party/bootstrap/stylesheets/_bootstrap.scss\n"
content_main+="// and comment out anything the site doesn't use!!!\n"
content_main+="//@import \"../third-party/bootstrap/stylesheets/bootstrap\";\n\n"

content_main+="// Import any other third-party libraries here, e.g.:\n"
content_main+="//@import \"../third-party/slick/slick.scss\";\n\n"

content_main+="// Our custom styles and components\n"
content_main+="@import \"base/variables\";\n"
content_main+="@import \"base/mixins\";\n"
content_main+="@import \"base/palette\";\n"
content_main+="@import \"base/typography\";\n"
content_main+="//@import \"components/brand\";\n"
content_main+="//@import \"components/nav\";\n"
content_main+="//@import \"components/footer\"; // ...and so on...\n\n"

content_main+="// General styles\n"
content_main+="body {\n"
content_main+="    // Make sure page will be no thinner than mobile portrait\n"
content_main+="    // Changed from 320 to 300 to stop horizontal scrollbars appearing on\n"
content_main+="    // browsers whose scrollbars overlay the body content (e.g. IE11)\n"
content_main+="    // rather than have scrollbars outside the body content (e.g. IE9)\n"
content_main+="    min-width: 300px;\n"
content_main+="    @media only screen and (max-width: 319px) {\n"
content_main+="        // Ensure horizontal scrolling on devices thinner than 320px\n"
content_main+="        overflow-x: auto;\n"
content_main+="    }\n"
content_main+="}\n\n"

content_main+="// z-index tracking (note down classes that change the z-index):\n"
content_main+="// 1:\n"
content_main+="// 2:\n"
content_main+="// 3:\n"
content_main+="// 4: ...and so on..."

echo "$content_main" > scss/main.scss

# base/_typography.scss
content_palette="// Store any colours used in the project here, as variables.\n"
content_palette+="// Please split them into:\n\n"
content_palette+="// 1: Colours that came from the client/original style tile\n"
content_palette+="//    @brand-color-X\n"
content_palette+="// 2: Colours that are added during development\n"
content_palette+="//    @color-X\n\n"

content_palette+="// So a full palette might look something like:\n"
content_palette+="// \$brand-color-1: #e55b57; // Red\n"
content_palette+="// \$brand-color-2: #04296F; // Dark blue\n"
content_palette+="// \$brand-color-3: #FFCB6E; // Yellow\n\n"
content_palette+="// \$color-1:       #323232; // Dark grey (e.g. for body text)\n"
content_palette+="// \$color-2:       transparentize(\$color-1, 0.50);\n"
content_palette+="// \$color-3:       #eee; // Light grey, e.g. for empty cells in the schedule\n"

echo "$content_palette" > scss/base/_palette.scss

# base/_typography.scss
content_typography="// Do not start front-end development without getting the\n"
content_typography+="// project's typography settings from the team's designer!\n\n"
content_typography+="// We use type-scale.com which works very well.\n\n"
content_typography+="// Please structure this file like this:\n"
content_typography+="// https://github.com/whiteoctober/whiteoctober-site-2016/blob/develop/www/scss/base/_typography.scss"

echo "$content_typography" > scss/base/_typography.scss

# base/_variables.scss
content_variables="// Bootstrap's breakpoints\n"
content_variables+="// You can remove the xs, sm, md, and lg definitions from this file if your\n"
content_variables+="// project actually uses Bootstrap\n\n"

content_variables+="// Extra small screen / phone\n"
content_variables+="\$screen-xs:                  480px !default;\n"
content_variables+="\$screen-xs-min:              \$screen-xs !default;\n\n"

content_variables+="// Small screen / tablet\n"
content_variables+="\$screen-sm:                  768px !default;\n"
content_variables+="\$screen-sm-min:              \$screen-sm !default;\n\n"

content_variables+="// Medium screen / desktop\n"
content_variables+="\$screen-md:                  992px !default;\n"
content_variables+="\$screen-md-min:              \$screen-md !default;\n\n"

content_variables+="// Large screen / wide desktop\n"
content_variables+="\$screen-lg:                  1200px !default;\n"
content_variables+="\$screen-lg-min:              \$screen-lg !default;\n\n"

content_variables+="// So media queries don't overlap when required, provide a maximum\n"
content_variables+="\$screen-xs-max:              (\$screen-sm-min - 1) !default;\n"
content_variables+="\$screen-sm-max:              (\$screen-md-min - 1) !default;\n"
content_variables+="\$screen-md-max:              (\$screen-lg-min - 1) !default;\n\n"

content_variables+="// Define an extra-small breakpoint\n"
content_variables+="\$screen-xxs:             0px;\n"
content_variables+="\$screen-xxs-min:         \$screen-xxs;\n"
content_variables+="\$screen-xss-max:         (\$screen-xs-min - 1);\n\n"

content_variables+="// Define an extra-large breakpoint\n"
content_variables+="\$screen-xl:             1600px;\n"
content_variables+="\$screen-xl-min:         \$screen-xl;\n"
content_variables+="\$screen-lg-max:         (\$screen-xl-min - 1);\n\n"

content_variables+="// Define an iMac-and-upwards breakpoint - anything larger than HD\n"
content_variables+="\$screen-xxl:             1921px;\n"
content_variables+="\$screen-xxl-min:         \$screen-xxl;\n"
content_variables+="\$screen-xl-max:          (\$screen-xxl-min - 1);"

echo "$content_variables" > scss/base/_variables.scss
